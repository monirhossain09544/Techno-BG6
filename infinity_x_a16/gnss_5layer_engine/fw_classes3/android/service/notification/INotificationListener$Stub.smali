.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final blacklist TRANSACTION_onActionClicked:I = 0x17

.field static final blacklist TRANSACTION_onAllowedAdjustmentsChanged:I = 0x19

.field static final greylist-max-o TRANSACTION_onInterruptionFilterChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onListenerConnected:I = 0x1

.field static final greylist-max-o TRANSACTION_onListenerHintsChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onNotificationChannelGroupModification:I = 0xb

.field static final greylist-max-o TRANSACTION_onNotificationChannelModification:I = 0xa

.field static final blacklist TRANSACTION_onNotificationClicked:I = 0x18

.field static final blacklist TRANSACTION_onNotificationDirectReply:I = 0x15

.field static final blacklist TRANSACTION_onNotificationEnqueuedWithChannel:I = 0xc

.field static final blacklist TRANSACTION_onNotificationEnqueuedWithChannelFull:I = 0xd

.field static final blacklist TRANSACTION_onNotificationExpansionChanged:I = 0x14

.field static final blacklist TRANSACTION_onNotificationFeedbackReceived:I = 0x1a

.field static final greylist-max-o TRANSACTION_onNotificationPosted:I = 0x2

.field static final blacklist TRANSACTION_onNotificationPostedFull:I = 0x3

.field static final greylist-max-o TRANSACTION_onNotificationRankingUpdate:I = 0x7

.field static final greylist-max-o TRANSACTION_onNotificationRemoved:I = 0x5

.field static final blacklist TRANSACTION_onNotificationRemovedFull:I = 0x6

.field static final greylist-max-o TRANSACTION_onNotificationSnoozedUntilContext:I = 0xe

.field static final blacklist TRANSACTION_onNotificationSnoozedUntilContextFull:I = 0xf

.field static final blacklist TRANSACTION_onNotificationVisibilityChanged:I = 0x13

.field static final blacklist TRANSACTION_onNotificationsSeen:I = 0x10

.field static final blacklist TRANSACTION_onPanelHidden:I = 0x12

.field static final blacklist TRANSACTION_onPanelRevealed:I = 0x11

.field static final blacklist TRANSACTION_onStatusBarIconsBehaviorChanged:I = 0x4

.field static final blacklist TRANSACTION_onSuggestedReplySent:I = 0x16


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 110
    const-string v0, "android.service.notification.INotificationListener"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
    .registers 3

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_4
    const-string v0, "android.service.notification.INotificationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    if-eqz v1, :cond_13

    .line 123
    check-cast v0, Landroid/service/notification/INotificationListener;

    return-object v0

    .line 125
    :cond_13
    new-instance v0, Landroid/service/notification/INotificationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 134
    packed-switch p0, :pswitch_data_6e

    .line 242
    const/4 p0, 0x0

    return-object p0

    .line 238
    :pswitch_5
    const-string/jumbo p0, "onNotificationFeedbackReceived"

    return-object p0

    .line 234
    :pswitch_9
    const-string/jumbo p0, "onAllowedAdjustmentsChanged"

    return-object p0

    .line 230
    :pswitch_d
    const-string/jumbo p0, "onNotificationClicked"

    return-object p0

    .line 226
    :pswitch_11
    const-string/jumbo p0, "onActionClicked"

    return-object p0

    .line 222
    :pswitch_15
    const-string/jumbo p0, "onSuggestedReplySent"

    return-object p0

    .line 218
    :pswitch_19
    const-string/jumbo p0, "onNotificationDirectReply"

    return-object p0

    .line 214
    :pswitch_1d
    const-string/jumbo p0, "onNotificationExpansionChanged"

    return-object p0

    .line 210
    :pswitch_21
    const-string/jumbo p0, "onNotificationVisibilityChanged"

    return-object p0

    .line 206
    :pswitch_25
    const-string/jumbo p0, "onPanelHidden"

    return-object p0

    .line 202
    :pswitch_29
    const-string/jumbo p0, "onPanelRevealed"

    return-object p0

    .line 198
    :pswitch_2d
    const-string/jumbo p0, "onNotificationsSeen"

    return-object p0

    .line 194
    :pswitch_31
    const-string/jumbo p0, "onNotificationSnoozedUntilContextFull"

    return-object p0

    .line 190
    :pswitch_35
    const-string/jumbo p0, "onNotificationSnoozedUntilContext"

    return-object p0

    .line 186
    :pswitch_39
    const-string/jumbo p0, "onNotificationEnqueuedWithChannelFull"

    return-object p0

    .line 182
    :pswitch_3d
    const-string/jumbo p0, "onNotificationEnqueuedWithChannel"

    return-object p0

    .line 178
    :pswitch_41
    const-string/jumbo p0, "onNotificationChannelGroupModification"

    return-object p0

    .line 174
    :pswitch_45
    const-string/jumbo p0, "onNotificationChannelModification"

    return-object p0

    .line 170
    :pswitch_49
    const-string/jumbo p0, "onInterruptionFilterChanged"

    return-object p0

    .line 166
    :pswitch_4d
    const-string/jumbo p0, "onListenerHintsChanged"

    return-object p0

    .line 162
    :pswitch_51
    const-string/jumbo p0, "onNotificationRankingUpdate"

    return-object p0

    .line 158
    :pswitch_55
    const-string/jumbo p0, "onNotificationRemovedFull"

    return-object p0

    .line 154
    :pswitch_59
    const-string/jumbo p0, "onNotificationRemoved"

    return-object p0

    .line 150
    :pswitch_5d
    const-string/jumbo p0, "onStatusBarIconsBehaviorChanged"

    return-object p0

    .line 146
    :pswitch_61
    const-string/jumbo p0, "onNotificationPostedFull"

    return-object p0

    .line 142
    :pswitch_65
    const-string/jumbo p0, "onNotificationPosted"

    return-object p0

    .line 138
    :pswitch_69
    const-string/jumbo p0, "onListenerConnected"

    return-object p0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 962
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 249
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    nop

    .line 254
    const-string v3, "android.service.notification.INotificationListener"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 255
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 258
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return v7

    .line 261
    :cond_17
    packed-switch p1, :pswitch_data_268

    .line 549
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 538
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    sget-object v3, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    .line 542
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V

    .line 545
    goto/16 :goto_266

    .line 532
    :pswitch_3b
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onAllowedAdjustmentsChanged()V

    .line 533
    goto/16 :goto_266

    .line 525
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1}, Landroid/service/notification/INotificationListener$Stub;->onNotificationClicked(Ljava/lang/String;)V

    .line 528
    goto/16 :goto_266

    .line 513
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 515
    sget-object v3, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V

    .line 520
    goto/16 :goto_266

    .line 501
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 508
    goto/16 :goto_266

    .line 493
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v1}, Landroid/service/notification/INotificationListener$Stub;->onNotificationDirectReply(Ljava/lang/String;)V

    .line 496
    goto/16 :goto_266

    .line 481
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 488
    goto/16 :goto_266

    .line 471
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v1, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V

    .line 476
    goto/16 :goto_266

    .line 465
    :pswitch_ac
    invoke-virtual {p0}, Landroid/service/notification/INotificationListener$Stub;->onPanelHidden()V

    .line 466
    goto/16 :goto_266

    .line 458
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Landroid/service/notification/INotificationListener$Stub;->onPanelRevealed(I)V

    .line 461
    goto/16 :goto_266

    .line 450
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v1}, Landroid/service/notification/INotificationListener$Stub;->onNotificationsSeen(Ljava/util/List;)V

    .line 453
    goto/16 :goto_266

    .line 440
    :pswitch_c9
    sget-object v1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v1, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContextFull(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 445
    goto/16 :goto_266

    .line 430
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v1, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V

    .line 435
    goto/16 :goto_266

    .line 418
    :pswitch_f1
    sget-object v1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 420
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 422
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueuedWithChannelFull(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 425
    goto/16 :goto_266

    .line 406
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .line 408
    sget-object v3, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 410
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 413
    goto/16 :goto_266

    .line 390
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 394
    sget-object v4, Landroid/app/NotificationChannelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 396
    move-object v2, v3

    move-object v3, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;IJ)V

    .line 401
    goto/16 :goto_266

    .line 374
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 376
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserHandle;

    .line 378
    sget-object v0, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationChannel;

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/notification/INotificationListener$Stub;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;IJ)V

    .line 385
    goto/16 :goto_266

    .line 364
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(IJ)V

    .line 369
    goto/16 :goto_266

    .line 354
    :pswitch_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(IJ)V

    .line 359
    goto/16 :goto_266

    .line 344
    :pswitch_19f
    sget-object v1, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;J)V

    .line 349
    goto/16 :goto_266

    .line 328
    :pswitch_1b3
    sget-object v1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 330
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 332
    sget-object v3, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotificationStats;

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemovedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;IJ)V

    .line 339
    goto/16 :goto_266

    .line 312
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .line 314
    sget-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 316
    sget-object v0, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/service/notification/NotificationStats;

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;IJ)V

    .line 323
    goto :goto_266

    .line 302
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/notification/INotificationListener$Stub;->onStatusBarIconsBehaviorChanged(ZJ)V

    .line 307
    goto :goto_266

    .line 290
    :pswitch_215
    sget-object v1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 292
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPostedFull(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;J)V

    .line 297
    goto :goto_266

    .line 278
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    move-result-object v1

    .line 280
    sget-object v2, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;J)V

    .line 285
    goto :goto_266

    .line 266
    :pswitch_24b
    sget-object v1, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/NotificationRankingUpdate;

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/IDispatchCompletionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IDispatchCompletionListener;

    move-result-object v2

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/IDispatchCompletionListener;J)V

    .line 273
    nop

    .line 552
    :goto_266
    return v7

    nop

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_24b
        :pswitch_230
        :pswitch_215
        :pswitch_206
        :pswitch_1dc
        :pswitch_1b3
        :pswitch_19f
        :pswitch_18f
        :pswitch_17f
        :pswitch_158
        :pswitch_131
        :pswitch_111
        :pswitch_f1
        :pswitch_dd
        :pswitch_c9
        :pswitch_bd
        :pswitch_b1
        :pswitch_ac
        :pswitch_9c
        :pswitch_88
        :pswitch_7c
        :pswitch_64
        :pswitch_4c
        :pswitch_40
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
