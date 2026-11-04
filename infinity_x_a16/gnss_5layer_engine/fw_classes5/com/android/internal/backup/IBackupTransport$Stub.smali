.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final greylist-max-o TRANSACTION_abortFullRestore:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelFullBackup:I = 0x16

.field static final greylist-max-o TRANSACTION_checkFullBackupSize:I = 0x14

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0xa

.field static final greylist-max-o TRANSACTION_configurationIntent:I = 0x2

.field static final greylist-max-o TRANSACTION_currentDestinationString:I = 0x3

.field static final greylist-max-o TRANSACTION_dataManagementIntent:I = 0x4

.field static final blacklist TRANSACTION_dataManagementIntentLabel:I = 0x5

.field static final greylist-max-o TRANSACTION_finishBackup:I = 0xb

.field static final greylist-max-o TRANSACTION_finishRestore:I = 0x11

.field static final greylist-max-o TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final blacklist TRANSACTION_getBackupManagerMonitor:I = 0x1c

.field static final greylist-max-o TRANSACTION_getBackupQuota:I = 0x18

.field static final greylist-max-o TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final greylist-max-o TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final blacklist TRANSACTION_getPackagesThatShouldNotUseRestrictedMode:I = 0x1d

.field static final greylist-max-o TRANSACTION_getRestoreData:I = 0x10

.field static final greylist-max-o TRANSACTION_getTransportFlags:I = 0x1b

.field static final greylist-max-o TRANSACTION_initializeDevice:I = 0x8

.field static final greylist-max-o TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final greylist-max-o TRANSACTION_name:I = 0x1

.field static final greylist-max-o TRANSACTION_nextRestorePackage:I = 0xf

.field static final greylist-max-o TRANSACTION_performBackup:I = 0x9

.field static final greylist-max-o TRANSACTION_performFullBackup:I = 0x13

.field static final greylist-max-o TRANSACTION_requestBackupTime:I = 0x7

.field static final greylist-max-o TRANSACTION_requestFullBackupTime:I = 0x12

.field static final greylist-max-o TRANSACTION_sendBackupData:I = 0x15

.field static final greylist-max-o TRANSACTION_startRestore:I = 0xe

.field static final greylist-max-o TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 442
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 443
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3

    .line 451
    if-nez p0, :cond_4

    .line 452
    const/4 p0, 0x0

    return-object p0

    .line 454
    :cond_4
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_13

    .line 456
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    return-object v0

    .line 458
    :cond_13
    new-instance v0, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 467
    packed-switch p0, :pswitch_data_5c

    .line 587
    const/4 p0, 0x0

    return-object p0

    .line 583
    :pswitch_5
    const-string p0, "getPackagesThatShouldNotUseRestrictedMode"

    return-object p0

    .line 579
    :pswitch_8
    const-string p0, "getBackupManagerMonitor"

    return-object p0

    .line 575
    :pswitch_b
    const-string p0, "getTransportFlags"

    return-object p0

    .line 571
    :pswitch_e
    const-string p0, "abortFullRestore"

    return-object p0

    .line 567
    :pswitch_11
    const-string p0, "getNextFullRestoreDataChunk"

    return-object p0

    .line 563
    :pswitch_14
    const-string p0, "getBackupQuota"

    return-object p0

    .line 559
    :pswitch_17
    const-string p0, "isAppEligibleForBackup"

    return-object p0

    .line 555
    :pswitch_1a
    const-string p0, "cancelFullBackup"

    return-object p0

    .line 551
    :pswitch_1d
    const-string p0, "sendBackupData"

    return-object p0

    .line 547
    :pswitch_20
    const-string p0, "checkFullBackupSize"

    return-object p0

    .line 543
    :pswitch_23
    const-string p0, "performFullBackup"

    return-object p0

    .line 539
    :pswitch_26
    const-string p0, "requestFullBackupTime"

    return-object p0

    .line 535
    :pswitch_29
    const-string p0, "finishRestore"

    return-object p0

    .line 531
    :pswitch_2c
    const-string p0, "getRestoreData"

    return-object p0

    .line 527
    :pswitch_2f
    const-string p0, "nextRestorePackage"

    return-object p0

    .line 523
    :pswitch_32
    const-string p0, "startRestore"

    return-object p0

    .line 519
    :pswitch_35
    const-string p0, "getCurrentRestoreSet"

    return-object p0

    .line 515
    :pswitch_38
    const-string p0, "getAvailableRestoreSets"

    return-object p0

    .line 511
    :pswitch_3b
    const-string p0, "finishBackup"

    return-object p0

    .line 507
    :pswitch_3e
    const-string p0, "clearBackupData"

    return-object p0

    .line 503
    :pswitch_41
    const-string p0, "performBackup"

    return-object p0

    .line 499
    :pswitch_44
    const-string p0, "initializeDevice"

    return-object p0

    .line 495
    :pswitch_47
    const-string p0, "requestBackupTime"

    return-object p0

    .line 491
    :pswitch_4a
    const-string p0, "transportDirName"

    return-object p0

    .line 487
    :pswitch_4d
    const-string p0, "dataManagementIntentLabel"

    return-object p0

    .line 483
    :pswitch_50
    const-string p0, "dataManagementIntent"

    return-object p0

    .line 479
    :pswitch_53
    const-string p0, "currentDestinationString"

    return-object p0

    .line 475
    :pswitch_56
    const-string p0, "configurationIntent"

    return-object p0

    .line 471
    :pswitch_59
    const-string p0, "name"

    return-object p0

    :pswitch_data_5c
    .packed-switch 0x1
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

    .line 462
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1630
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 594
    invoke-static {p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    nop

    .line 599
    const-string v0, "com.android.internal.backup.IBackupTransport"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 600
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 603
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    return v1

    .line 606
    :cond_17
    packed-switch p1, :pswitch_data_258

    .line 880
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 869
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 873
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 874
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/backup/IBackupTransport$Stub;->getPackagesThatShouldNotUseRestrictedMode(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 876
    goto/16 :goto_257

    .line 861
    :pswitch_37
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupManagerMonitor(Lcom/android/internal/infra/AndroidFuture;)V

    .line 864
    goto/16 :goto_257

    .line 853
    :pswitch_47
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V

    .line 856
    goto/16 :goto_257

    .line 845
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p1

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 848
    goto/16 :goto_257

    .line 835
    :pswitch_67
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p3

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 840
    goto/16 :goto_257

    .line 823
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 827
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 830
    goto/16 :goto_257

    .line 811
    :pswitch_97
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 815
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 818
    goto/16 :goto_257

    .line 803
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 806
    goto/16 :goto_257

    .line 793
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p3

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 798
    goto/16 :goto_257

    .line 783
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V

    .line 788
    goto/16 :goto_257

    .line 769
    :pswitch_eb
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 771
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v0

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 778
    goto/16 :goto_257

    .line 761
    :pswitch_10f
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 764
    goto/16 :goto_257

    .line 753
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p1

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 756
    goto/16 :goto_257

    .line 743
    :pswitch_12f
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p3

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 748
    goto/16 :goto_257

    .line 735
    :pswitch_147
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 738
    goto/16 :goto_257

    .line 723
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 725
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/PackageInfo;

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v0

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, p3, p4, p1, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 730
    goto/16 :goto_257

    .line 715
    :pswitch_173
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    .line 718
    goto/16 :goto_257

    .line 707
    :pswitch_183
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V

    .line 710
    goto/16 :goto_257

    .line 699
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p1

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 702
    goto/16 :goto_257

    .line 689
    :pswitch_1a3
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p3

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 694
    goto/16 :goto_257

    .line 675
    :pswitch_1bb
    sget-object p1, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 677
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object v0

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 684
    goto/16 :goto_257

    .line 667
    :pswitch_1df
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/backup/ITransportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/ITransportStatusCallback;

    move-result-object p1

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 670
    goto :goto_257

    .line 659
    :pswitch_1ee
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 662
    goto :goto_257

    .line 651
    :pswitch_1fd
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName(Lcom/android/internal/infra/AndroidFuture;)V

    .line 654
    goto :goto_257

    .line 643
    :pswitch_20c
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V

    .line 646
    goto :goto_257

    .line 635
    :pswitch_21b
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 638
    goto :goto_257

    .line 627
    :pswitch_22a
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V

    .line 630
    goto :goto_257

    .line 619
    :pswitch_239
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V

    .line 622
    goto :goto_257

    .line 611
    :pswitch_248
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/IBackupTransport$Stub;->name(Lcom/android/internal/infra/AndroidFuture;)V

    .line 614
    nop

    .line 883
    :goto_257
    return v1

    :pswitch_data_258
    .packed-switch 0x1
        :pswitch_248
        :pswitch_239
        :pswitch_22a
        :pswitch_21b
        :pswitch_20c
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1df
        :pswitch_1bb
        :pswitch_1a3
        :pswitch_193
        :pswitch_183
        :pswitch_173
        :pswitch_157
        :pswitch_147
        :pswitch_12f
        :pswitch_11f
        :pswitch_10f
        :pswitch_eb
        :pswitch_d7
        :pswitch_c3
        :pswitch_b3
        :pswitch_97
        :pswitch_7f
        :pswitch_67
        :pswitch_57
        :pswitch_47
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
