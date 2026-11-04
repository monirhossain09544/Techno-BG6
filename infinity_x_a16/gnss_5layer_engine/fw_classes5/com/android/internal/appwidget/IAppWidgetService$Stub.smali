.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final greylist-max-o TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final greylist-max-r TRANSACTION_bindAppWidgetId:I = 0x16

.field static final greylist-max-o TRANSACTION_bindRemoteViewsService:I = 0x17

.field static final greylist-max-o TRANSACTION_createAppWidgetConfigIntentSender:I = 0xa

.field static final greylist-max-o TRANSACTION_deleteAllHosts:I = 0x6

.field static final greylist-max-o TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final greylist-max-o TRANSACTION_deleteHost:I = 0x5

.field static final greylist-max-o TRANSACTION_getAppWidgetIds:I = 0x1a

.field static final greylist-max-o TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final greylist-max-o TRANSACTION_getAppWidgetInfo:I = 0x13

.field static final greylist-max-o TRANSACTION_getAppWidgetOptions:I = 0xd

.field static final greylist-max-o TRANSACTION_getAppWidgetViews:I = 0x7

.field static final greylist-max-o TRANSACTION_getInstalledProvidersForProfile:I = 0x12

.field static final blacklist TRANSACTION_getMaxBitmapMemory:I = 0x19

.field static final blacklist TRANSACTION_getWidgetPreview:I = 0x20

.field static final greylist-max-o TRANSACTION_hasBindAppWidgetPermission:I = 0x14

.field static final greylist-max-o TRANSACTION_isBoundWidgetPackage:I = 0x1b

.field static final blacklist TRANSACTION_isFirstConfigActivityPending:I = 0x24

.field static final greylist-max-o TRANSACTION_isRequestPinAppWidgetSupported:I = 0x1d

.field static final blacklist TRANSACTION_noteAppWidgetTapped:I = 0x1e

.field static final greylist-max-o TRANSACTION_notifyAppWidgetViewDataChanged:I = 0x11

.field static final blacklist TRANSACTION_notifyProviderInheritance:I = 0x18

.field static final greylist-max-o TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xe

.field static final blacklist TRANSACTION_queryAppWidgetEvents:I = 0x23

.field static final blacklist TRANSACTION_removeWidgetPreview:I = 0x21

.field static final blacklist TRANSACTION_reportWidgetEvents:I = 0x22

.field static final greylist-max-o TRANSACTION_requestPinAppWidget:I = 0x1c

.field static final blacklist TRANSACTION_setAppWidgetHidden:I = 0x9

.field static final greylist-max-o TRANSACTION_setBindAppWidgetPermission:I = 0x15

.field static final blacklist TRANSACTION_setConfigActivityComplete:I = 0x25

.field static final blacklist TRANSACTION_setWidgetPreview:I = 0x1f

.field static final greylist-max-o TRANSACTION_startListening:I = 0x1

.field static final greylist-max-o TRANSACTION_stopListening:I = 0x2

.field static final greylist-max-o TRANSACTION_updateAppWidgetIds:I = 0xb

.field static final greylist-max-o TRANSACTION_updateAppWidgetOptions:I = 0xc

.field static final greylist-max-o TRANSACTION_updateAppWidgetProvider:I = 0xf

.field static final greylist-max-o TRANSACTION_updateAppWidgetProviderInfo:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 166
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .registers 3

    .line 174
    if-nez p0, :cond_4

    .line 175
    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_4
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_13

    .line 179
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    return-object v0

    .line 181
    :cond_13
    new-instance v0, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 190
    packed-switch p0, :pswitch_data_74

    .line 342
    const/4 p0, 0x0

    return-object p0

    .line 338
    :pswitch_5
    const-string p0, "setConfigActivityComplete"

    return-object p0

    .line 334
    :pswitch_8
    const-string p0, "isFirstConfigActivityPending"

    return-object p0

    .line 330
    :pswitch_b
    const-string p0, "queryAppWidgetEvents"

    return-object p0

    .line 326
    :pswitch_e
    const-string p0, "reportWidgetEvents"

    return-object p0

    .line 322
    :pswitch_11
    const-string p0, "removeWidgetPreview"

    return-object p0

    .line 318
    :pswitch_14
    const-string p0, "getWidgetPreview"

    return-object p0

    .line 314
    :pswitch_17
    const-string p0, "setWidgetPreview"

    return-object p0

    .line 310
    :pswitch_1a
    const-string p0, "noteAppWidgetTapped"

    return-object p0

    .line 306
    :pswitch_1d
    const-string p0, "isRequestPinAppWidgetSupported"

    return-object p0

    .line 302
    :pswitch_20
    const-string p0, "requestPinAppWidget"

    return-object p0

    .line 298
    :pswitch_23
    const-string p0, "isBoundWidgetPackage"

    return-object p0

    .line 294
    :pswitch_26
    const-string p0, "getAppWidgetIds"

    return-object p0

    .line 290
    :pswitch_29
    const-string p0, "getMaxBitmapMemory"

    return-object p0

    .line 286
    :pswitch_2c
    const-string p0, "notifyProviderInheritance"

    return-object p0

    .line 282
    :pswitch_2f
    const-string p0, "bindRemoteViewsService"

    return-object p0

    .line 278
    :pswitch_32
    const-string p0, "bindAppWidgetId"

    return-object p0

    .line 274
    :pswitch_35
    const-string p0, "setBindAppWidgetPermission"

    return-object p0

    .line 270
    :pswitch_38
    const-string p0, "hasBindAppWidgetPermission"

    return-object p0

    .line 266
    :pswitch_3b
    const-string p0, "getAppWidgetInfo"

    return-object p0

    .line 262
    :pswitch_3e
    const-string p0, "getInstalledProvidersForProfile"

    return-object p0

    .line 258
    :pswitch_41
    const-string p0, "notifyAppWidgetViewDataChanged"

    return-object p0

    .line 254
    :pswitch_44
    const-string p0, "updateAppWidgetProviderInfo"

    return-object p0

    .line 250
    :pswitch_47
    const-string p0, "updateAppWidgetProvider"

    return-object p0

    .line 246
    :pswitch_4a
    const-string p0, "partiallyUpdateAppWidgetIds"

    return-object p0

    .line 242
    :pswitch_4d
    const-string p0, "getAppWidgetOptions"

    return-object p0

    .line 238
    :pswitch_50
    const-string p0, "updateAppWidgetOptions"

    return-object p0

    .line 234
    :pswitch_53
    const-string p0, "updateAppWidgetIds"

    return-object p0

    .line 230
    :pswitch_56
    const-string p0, "createAppWidgetConfigIntentSender"

    return-object p0

    .line 226
    :pswitch_59
    const-string p0, "setAppWidgetHidden"

    return-object p0

    .line 222
    :pswitch_5c
    const-string p0, "getAppWidgetIdsForHost"

    return-object p0

    .line 218
    :pswitch_5f
    const-string p0, "getAppWidgetViews"

    return-object p0

    .line 214
    :pswitch_62
    const-string p0, "deleteAllHosts"

    return-object p0

    .line 210
    :pswitch_65
    const-string p0, "deleteHost"

    return-object p0

    .line 206
    :pswitch_68
    const-string p0, "deleteAppWidgetId"

    return-object p0

    .line 202
    :pswitch_6b
    const-string p0, "allocateAppWidgetId"

    return-object p0

    .line 198
    :pswitch_6e
    const-string p0, "stopListening"

    return-object p0

    .line 194
    :pswitch_71
    const-string p0, "startListening"

    return-object p0

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 185
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1541
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 349
    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    nop

    .line 354
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 355
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 358
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    return v1

    .line 361
    :cond_17
    packed-switch p1, :pswitch_data_3d0

    .line 814
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 807
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setConfigActivityComplete(I)V

    .line 810
    goto/16 :goto_3ce

    .line 795
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isFirstConfigActivityPending(Ljava/lang/String;I)Z

    move-result p1

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 802
    goto/16 :goto_3ce

    .line 781
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->queryAppWidgetEvents(Ljava/lang/String;JJ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 790
    goto/16 :goto_3ce

    .line 771
    :pswitch_5f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 773
    sget-object p3, Landroid/appwidget/AppWidgetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/appwidget/AppWidgetEvent;

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->reportWidgetEvents(Ljava/lang/String;[Landroid/appwidget/AppWidgetEvent;)V

    .line 776
    goto/16 :goto_3ce

    .line 760
    :pswitch_74
    move-object v2, p0

    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->removeWidgetPreview(Landroid/content/ComponentName;I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_3ce

    .line 744
    :pswitch_8c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 746
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ComponentName;

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 755
    goto/16 :goto_3ce

    .line 730
    :pswitch_b0
    move-object v2, p0

    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 734
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result p1

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 739
    goto/16 :goto_3ce

    .line 720
    :pswitch_d4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->noteAppWidgetTapped(Ljava/lang/String;I)V

    .line 725
    goto/16 :goto_3ce

    .line 712
    :pswitch_e5
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isRequestPinAppWidgetSupported()Z

    move-result p1

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 715
    goto/16 :goto_3ce

    .line 697
    :pswitch_f2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 699
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ComponentName;

    .line 701
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 703
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p1

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 708
    goto/16 :goto_3ce

    .line 685
    :pswitch_11e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p1

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 692
    goto/16 :goto_3ce

    .line 675
    :pswitch_136
    move-object v2, p0

    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 680
    goto/16 :goto_3ce

    .line 667
    :pswitch_14e
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getMaxBitmapMemory()I

    move-result p1

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    goto/16 :goto_3ce

    .line 659
    :pswitch_15b
    move-object v2, p0

    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ComponentName;

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyProviderInheritance([Landroid/content/ComponentName;)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    goto/16 :goto_3ce

    .line 637
    :pswitch_16f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 641
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/content/Intent;

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v8

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z

    move-result p1

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 654
    goto/16 :goto_3ce

    .line 619
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 625
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/content/ComponentName;

    .line 627
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_3ce

    .line 606
    :pswitch_1d6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_3ce

    .line 594
    :pswitch_1ee
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result p1

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    goto/16 :goto_3ce

    .line 582
    :pswitch_206
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 589
    goto/16 :goto_3ce

    .line 568
    :pswitch_21e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 577
    goto/16 :goto_3ce

    .line 555
    :pswitch_23a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_3ce

    .line 544
    :pswitch_252
    move-object v2, p0

    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_3ce

    .line 533
    :pswitch_26a
    move-object v2, p0

    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 535
    sget-object p4, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/RemoteViews;

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto/16 :goto_3ce

    .line 520
    :pswitch_286
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 524
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto/16 :goto_3ce

    .line 508
    :pswitch_2a2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 515
    goto/16 :goto_3ce

    .line 495
    :pswitch_2ba
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 499
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    goto/16 :goto_3ce

    .line 482
    :pswitch_2d6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 486
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_3ce

    .line 468
    :pswitch_2f2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object p1

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 477
    goto/16 :goto_3ce

    .line 457
    :pswitch_30e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setAppWidgetHidden(Ljava/lang/String;I)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    goto/16 :goto_3ce

    .line 445
    :pswitch_322
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object p1

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 452
    goto/16 :goto_3ce

    .line 433
    :pswitch_33a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto/16 :goto_3ce

    .line 426
    :pswitch_352
    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto/16 :goto_3ce

    .line 416
    :pswitch_35b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(Ljava/lang/String;I)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto :goto_3ce

    .line 405
    :pswitch_36e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(Ljava/lang/String;I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto :goto_3ce

    .line 393
    :pswitch_381
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto :goto_3ce

    .line 382
    :pswitch_398
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(Ljava/lang/String;I)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto :goto_3ce

    .line 366
    :pswitch_3ab
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 377
    nop

    .line 817
    :goto_3ce
    return v1

    nop

    :pswitch_data_3d0
    .packed-switch 0x1
        :pswitch_3ab
        :pswitch_398
        :pswitch_381
        :pswitch_36e
        :pswitch_35b
        :pswitch_352
        :pswitch_33a
        :pswitch_322
        :pswitch_30e
        :pswitch_2f2
        :pswitch_2d6
        :pswitch_2ba
        :pswitch_2a2
        :pswitch_286
        :pswitch_26a
        :pswitch_252
        :pswitch_23a
        :pswitch_21e
        :pswitch_206
        :pswitch_1ee
        :pswitch_1d6
        :pswitch_1a8
        :pswitch_16f
        :pswitch_15b
        :pswitch_14e
        :pswitch_136
        :pswitch_11e
        :pswitch_f2
        :pswitch_e5
        :pswitch_d4
        :pswitch_b0
        :pswitch_8c
        :pswitch_74
        :pswitch_5f
        :pswitch_43
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method
