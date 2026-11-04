.class Landroid/telecom/ParcelableCall$1;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;
    .registers 37

    .line 678
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 681
    const-class v4, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/DisconnectCause;

    .line 682
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 683
    const-class v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 687
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 689
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 691
    const-class v14, Landroid/telecom/GatewayInfo;

    invoke-virtual {v0, v1, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/GatewayInfo;

    .line 692
    const-class v15, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/PhoneAccountHandle;

    .line 693
    move-object/from16 p0, v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_61

    move v15, v14

    goto :goto_63

    :cond_61
    move/from16 v15, v16

    .line 694
    :goto_63
    nop

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v14

    .line 696
    move-object/from16 v18, v14

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 697
    move-object/from16 v20, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 698
    move/from16 v21, v15

    const-class v15, Ljava/lang/String;

    invoke-virtual {v0, v14, v1, v15}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 699
    const-class v15, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/StatusHints;

    .line 700
    move-object/from16 v22, v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 701
    move/from16 v23, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 702
    move-object/from16 v24, v14

    const-class v14, Ljava/lang/String;

    invoke-virtual {v0, v15, v1, v14}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 703
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v14

    .line 704
    move-object/from16 v25, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v14

    .line 705
    move-object/from16 v26, v14

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 706
    move-object/from16 v27, v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v15

    move/from16 v28, v13

    const/4 v13, 0x1

    if-ne v15, v13, :cond_b8

    goto :goto_ba

    :cond_b8
    move/from16 v13, v16

    .line 707
    :goto_ba
    const-class v15, Landroid/telecom/ParcelableRttCall;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/ParcelableRttCall;

    .line 708
    move-object/from16 v16, v12

    move/from16 v19, v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 709
    move-wide/from16 v29, v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 711
    move/from16 v31, v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 712
    move-object/from16 v32, v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 713
    move-object/from16 v33, v13

    const-class v13, Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 714
    move-object/from16 v34, v13

    const-class v13, Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 716
    new-instance v13, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    invoke-direct {v13}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;-><init>()V

    .line 717
    invoke-virtual {v13, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 718
    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 719
    invoke-virtual {v2, v4}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 720
    invoke-virtual {v2, v5}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCannedSmsResponses(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 721
    invoke-virtual {v2, v6}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCapabilities(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 722
    invoke-virtual {v2, v7}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setProperties(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 723
    invoke-virtual {v2, v14}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setSupportedAudioRoutes(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 724
    invoke-virtual {v2, v8, v9}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setConnectTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 725
    invoke-virtual {v2, v10}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setHandle(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 726
    invoke-virtual {v2, v11}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setHandlePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 727
    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 728
    move/from16 v3, v28

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerDisplayNamePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 729
    move-object/from16 v14, v17

    invoke-virtual {v2, v14}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setGatewayInfo(Landroid/telecom/GatewayInfo;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 730
    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 731
    move/from16 v14, v21

    invoke-virtual {v2, v14}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIsVideoCallProviderChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 732
    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setVideoCallProvider(Lcom/android/internal/telecom/IVideoProvider;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 733
    move/from16 v13, v19

    invoke-virtual {v2, v13}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIsRttCallChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 734
    invoke-virtual {v2, v15}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setRttCall(Landroid/telecom/ParcelableRttCall;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 735
    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setParentCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 736
    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setChildCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 737
    move-object/from16 v15, v22

    invoke-virtual {v2, v15}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 738
    move/from16 v3, v23

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setVideoState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 739
    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setConferenceableCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 740
    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIntentExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 741
    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 742
    move-wide/from16 v3, v29

    invoke-virtual {v2, v3, v4}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCreationTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 743
    invoke-virtual {v2, v12}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallDirection(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 744
    move/from16 v3, v31

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerNumberVerificationStatus(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 745
    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setContactDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 746
    move-object/from16 v3, v33

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setActiveChildCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 747
    move-object/from16 v13, v34

    invoke-virtual {v2, v13}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setContactPhotoUri(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v2

    .line 748
    invoke-virtual {v2, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setAssociatedUser(Landroid/os/UserHandle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v1

    .line 749
    invoke-virtual {v1, v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setAudioProcessingUseCase(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->createParcelableCall()Landroid/telecom/ParcelableCall;

    move-result-object v0

    .line 716
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

    .line 675
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableCall;
    .registers 2

    .line 755
    new-array p1, p1, [Landroid/telecom/ParcelableCall;

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

    .line 675
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->newArray(I)[Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method
