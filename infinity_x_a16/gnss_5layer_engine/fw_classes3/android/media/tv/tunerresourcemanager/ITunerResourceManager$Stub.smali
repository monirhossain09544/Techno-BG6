.class public abstract Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.super Landroid/os/Binder;
.source "ITunerResourceManager.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireLock:I = 0x1f

.field static final blacklist TRANSACTION_clearResourceMap:I = 0x1d

.field static final blacklist TRANSACTION_getClientPriority:I = 0x21

.field static final blacklist TRANSACTION_getConfigPriority:I = 0x22

.field static final blacklist TRANSACTION_getMaxNumberOfFrontends:I = 0xd

.field static final blacklist TRANSACTION_hasUnusedFrontend:I = 0x4

.field static final blacklist TRANSACTION_isHigherPriority:I = 0x1b

.field static final blacklist TRANSACTION_isLowestPriority:I = 0x5

.field static final blacklist TRANSACTION_registerClientProfile:I = 0x1

.field static final blacklist TRANSACTION_releaseCasSession:I = 0x18

.field static final blacklist TRANSACTION_releaseCiCam:I = 0x19

.field static final blacklist TRANSACTION_releaseDemux:I = 0x16

.field static final blacklist TRANSACTION_releaseDescrambler:I = 0x17

.field static final blacklist TRANSACTION_releaseFrontend:I = 0x15

.field static final blacklist TRANSACTION_releaseLnb:I = 0x1a

.field static final blacklist TRANSACTION_releaseLock:I = 0x20

.field static final blacklist TRANSACTION_requestCasSession:I = 0x12

.field static final blacklist TRANSACTION_requestCiCam:I = 0x13

.field static final blacklist TRANSACTION_requestDemux:I = 0x10

.field static final blacklist TRANSACTION_requestDescrambler:I = 0x11

.field static final blacklist TRANSACTION_requestFrontend:I = 0xb

.field static final blacklist TRANSACTION_requestLnb:I = 0x14

.field static final blacklist TRANSACTION_restoreResourceMap:I = 0x1e

.field static final blacklist TRANSACTION_setDemuxInfoList:I = 0x8

.field static final blacklist TRANSACTION_setFrontendInfoList:I = 0x6

.field static final blacklist TRANSACTION_setLnbInfoList:I = 0x9

.field static final blacklist TRANSACTION_setMaxNumberOfFrontends:I = 0xc

.field static final blacklist TRANSACTION_setResourceOwnershipRetention:I = 0xa

.field static final blacklist TRANSACTION_shareFrontend:I = 0xe

.field static final blacklist TRANSACTION_storeResourceMap:I = 0x1c

.field static final blacklist TRANSACTION_transferOwner:I = 0xf

.field static final blacklist TRANSACTION_unregisterClientProfile:I = 0x2

.field static final blacklist TRANSACTION_updateCasInfo:I = 0x7

.field static final blacklist TRANSACTION_updateClientPriority:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 585
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 586
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
    .registers 3

    .line 594
    if-nez p0, :cond_4

    .line 595
    const/4 p0, 0x0

    return-object p0

    .line 597
    :cond_4
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 598
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    if-eqz v1, :cond_13

    .line 599
    check-cast v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    return-object v0

    .line 601
    :cond_13
    new-instance v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 605
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    nop

    .line 610
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 611
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 614
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    return v1

    .line 617
    :cond_17
    const/4 v0, 0x0

    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_3e6

    .line 1054
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1043
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getConfigPriority(IZ)I

    move-result p1

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    goto/16 :goto_3ce

    .line 1031
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getClientPriority(II)I

    move-result p1

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    goto/16 :goto_3ce

    .line 1021
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseLock(I)Z

    move-result p1

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1026
    goto/16 :goto_3ce

    .line 1009
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, p1, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->acquireLock(IJ)Z

    move-result p1

    .line 1014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1016
    goto/16 :goto_3ce

    .line 1000
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->restoreResourceMap(I)V

    .line 1003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    goto/16 :goto_3ce

    .line 991
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->clearResourceMap(I)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    goto/16 :goto_3ce

    .line 982
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->storeResourceMap(I)V

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    goto/16 :goto_3ce

    .line 970
    :pswitch_aa
    sget-object p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 972
    sget-object p4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result p1

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 977
    goto/16 :goto_3ce

    .line 959
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseLnb(JI)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_3ce

    .line 948
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseCiCam(JI)V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_3ce

    .line 937
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseCasSession(JI)V

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_3ce

    .line 926
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseDescrambler(JI)V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_3ce

    .line 915
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseDemux(JI)V

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    goto/16 :goto_3ce

    .line 904
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseFrontend(JI)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    goto/16 :goto_3ce

    .line 884
    :pswitch_13b
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 887
    if-gt p4, v3, :cond_160

    .line 889
    if-gez p4, :cond_14c

    .line 890
    goto :goto_14e

    .line 892
    :cond_14c
    new-array v0, p4, [J

    .line 894
    :goto_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z

    move-result p1

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 899
    goto/16 :goto_3ce

    .line 888
    :cond_160
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 864
    :pswitch_177
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 867
    if-gt p4, v3, :cond_19c

    .line 869
    if-gez p4, :cond_188

    .line 870
    goto :goto_18a

    .line 872
    :cond_188
    new-array v0, p4, [J

    .line 874
    :goto_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z

    move-result p1

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 878
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 879
    goto/16 :goto_3ce

    .line 868
    :cond_19c
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 844
    :pswitch_1b3
    sget-object p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 847
    if-gt p4, v3, :cond_1d8

    .line 849
    if-gez p4, :cond_1c4

    .line 850
    goto :goto_1c6

    .line 852
    :cond_1c4
    new-array v0, p4, [J

    .line 854
    :goto_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result p1

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 858
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 859
    goto/16 :goto_3ce

    .line 848
    :cond_1d8
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :pswitch_1ef
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 827
    if-gt p4, v3, :cond_214

    .line 829
    if-gez p4, :cond_200

    .line 830
    goto :goto_202

    .line 832
    :cond_200
    new-array v0, p4, [J

    .line 834
    :goto_202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z

    move-result p1

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 838
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 839
    goto/16 :goto_3ce

    .line 828
    :cond_214
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 804
    :pswitch_22b
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 807
    if-gt p4, v3, :cond_250

    .line 809
    if-gez p4, :cond_23c

    .line 810
    goto :goto_23e

    .line 812
    :cond_23c
    new-array v0, p4, [J

    .line 814
    :goto_23e
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z

    move-result p1

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 819
    goto/16 :goto_3ce

    .line 808
    :cond_250
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 790
    :pswitch_267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->transferOwner(III)Z

    move-result p1

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 799
    goto/16 :goto_3ce

    .line 779
    :pswitch_282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->shareFrontend(II)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_3ce

    .line 769
    :pswitch_295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getMaxNumberOfFrontends(I)I

    move-result p1

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    goto/16 :goto_3ce

    .line 757
    :pswitch_2a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setMaxNumberOfFrontends(II)Z

    move-result p1

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    goto/16 :goto_3ce

    .line 737
    :pswitch_2bf
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 740
    if-gt p4, v3, :cond_2e4

    .line 742
    if-gez p4, :cond_2d0

    .line 743
    goto :goto_2d2

    .line 745
    :cond_2d0
    new-array v0, p4, [J

    .line 747
    :goto_2d2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, p1, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z

    move-result p1

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 752
    goto/16 :goto_3ce

    .line 741
    :cond_2e4
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 726
    :pswitch_2fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setResourceOwnershipRetention(IZ)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_3ce

    .line 717
    :pswitch_30e
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 718
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setLnbInfoList([J)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_3ce

    .line 708
    :pswitch_31d
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_3ce

    .line 697
    :pswitch_330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->updateCasInfo(II)V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_3ce

    .line 688
    :pswitch_343
    sget-object p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_3ce

    .line 676
    :pswitch_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->isLowestPriority(II)Z

    move-result p1

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 683
    goto :goto_3ce

    .line 666
    :pswitch_36c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->hasUnusedFrontend(I)Z

    move-result p1

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 671
    goto :goto_3ce

    .line 652
    :pswitch_37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->updateClientPriority(III)Z

    move-result p1

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    goto :goto_3ce

    .line 643
    :pswitch_398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->unregisterClientProfile(I)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto :goto_3ce

    .line 622
    :pswitch_3a6
    sget-object p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object p4

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 627
    if-gt v4, v3, :cond_3cf

    .line 629
    if-gez v4, :cond_3bf

    .line 630
    goto :goto_3c1

    .line 632
    :cond_3bf
    new-array v0, v4, [I

    .line 634
    :goto_3c1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 638
    nop

    .line 1057
    :goto_3ce
    return v1

    .line 628
    :cond_3cf
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_3e6
    .packed-switch 0x1
        :pswitch_3a6
        :pswitch_398
        :pswitch_37e
        :pswitch_36c
        :pswitch_356
        :pswitch_343
        :pswitch_330
        :pswitch_31d
        :pswitch_30e
        :pswitch_2fb
        :pswitch_2bf
        :pswitch_2a8
        :pswitch_295
        :pswitch_282
        :pswitch_267
        :pswitch_22b
        :pswitch_1ef
        :pswitch_1b3
        :pswitch_177
        :pswitch_13b
        :pswitch_128
        :pswitch_115
        :pswitch_102
        :pswitch_ef
        :pswitch_dc
        :pswitch_c9
        :pswitch_aa
        :pswitch_9b
        :pswitch_8c
        :pswitch_7d
        :pswitch_66
        :pswitch_53
        :pswitch_3c
        :pswitch_25
    .end packed-switch
.end method
