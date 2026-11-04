.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    }
.end annotation


# static fields
.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mActiveChildCallId:Ljava/lang/String;

.field private final blacklist mAssociatedUser:Landroid/os/UserHandle;

.field private final blacklist mAudioProcessingUseCase:I

.field private final blacklist mCallDirection:I

.field private final greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCallerDisplayNamePresentation:I

.field private final blacklist mCallerNumberVerificationStatus:I

.field private final greylist-max-o mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCapabilities:I

.field private final greylist-max-o mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectTimeMillis:J

.field private final blacklist mContactDisplayName:Ljava/lang/String;

.field private final blacklist mContactPhotoUri:Landroid/net/Uri;

.field private final greylist-max-o mCreationTimeMillis:J

.field private final greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final greylist-max-o mHandle:Landroid/net/Uri;

.field private final greylist-max-o mHandlePresentation:I

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mIntentExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIsRttCallChanged:Z

.field private final greylist-max-o mIsVideoCallProviderChanged:Z

.field private final greylist-max-o mParentCallId:Ljava/lang/String;

.field private final greylist-max-o mProperties:I

.field private final greylist-max-o mRttCall:Landroid/telecom/ParcelableRttCall;

.field private final greylist-max-o mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mVideoCall:Landroid/telecom/VideoCallImpl;

.field private final greylist-max-o mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountHandle(Landroid/telecom/ParcelableCall;)Landroid/telecom/PhoneAccountHandle;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveChildCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssociatedUser(Landroid/telecom/ParcelableCall;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioProcessingUseCase(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mAudioProcessingUseCase:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallDirection(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerDisplayNamePresentation(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerNumberVerificationStatus(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCannedSmsResponses(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilities(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectTimeMillis(Landroid/telecom/ParcelableCall;)J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactPhotoUri(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCreationTimeMillis(Landroid/telecom/ParcelableCall;)J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectCause(Landroid/telecom/ParcelableCall;)Landroid/telecom/DisconnectCause;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGatewayInfo(Landroid/telecom/ParcelableCall;)Landroid/telecom/GatewayInfo;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandlePresentation(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntentExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRttCallChanged(Landroid/telecom/ParcelableCall;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoCallProviderChanged(Landroid/telecom/ParcelableCall;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProperties(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRttCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/ParcelableRttCall;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusHints(Landroid/telecom/ParcelableCall;)Landroid/telecom/StatusHints;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedAudioRoutes(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallProvider(Landroid/telecom/ParcelableCall;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoState(Landroid/telecom/ParcelableCall;)I
    .registers 1

    iget p0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 674
    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;ZLandroid/telecom/ParcelableRttCall;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;I)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Z",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Z",
            "Landroid/telecom/ParcelableRttCall;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 396
    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    .line 397
    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 398
    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 399
    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 400
    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 401
    iput p7, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    .line 402
    iput-wide p8, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 403
    iput-object p10, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 404
    iput p11, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 405
    iput-object p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 406
    iput p13, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 407
    iput-object p14, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 408
    iput-object p15, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 409
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    .line 410
    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 411
    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    .line 412
    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    .line 413
    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 414
    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 415
    move-object/from16 p1, p22

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 416
    move/from16 p1, p23

    iput p1, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 417
    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 418
    move-object/from16 p1, p25

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    .line 419
    move-object/from16 p1, p26

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 420
    move-wide/from16 p1, p27

    iput-wide p1, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    .line 421
    move/from16 p1, p29

    iput p1, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    .line 422
    move/from16 p1, p30

    iput p1, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    .line 423
    move-object/from16 p1, p31

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    .line 424
    move-object/from16 p1, p32

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    .line 425
    move-object/from16 p1, p33

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    .line 426
    move-object/from16 p1, p34

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    .line 427
    move/from16 p1, p35

    iput p1, p0, Landroid/telecom/ParcelableCall;->mAudioProcessingUseCase:I

    .line 428
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public blacklist getActiveChildCallId()Ljava/lang/String;
    .registers 2

    .line 664
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAssociatedUser()Landroid/os/UserHandle;
    .registers 2

    .line 655
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getAudioProcessingUseCase()I
    .registers 2

    .line 668
    iget v0, p0, Landroid/telecom/ParcelableCall;->mAudioProcessingUseCase:I

    return v0
.end method

.method public blacklist getCallDirection()I
    .registers 2

    .line 625
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    return v0
.end method

.method public greylist-max-o getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 491
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCallerDisplayNamePresentation()I
    .registers 2

    .line 499
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public blacklist getCallerNumberVerificationStatus()I
    .registers 2

    .line 634
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public greylist-max-o getCannedSmsResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getCapabilities()I
    .registers 2

    .line 459
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return v0
.end method

.method public greylist-max-o getChildCallIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getConferenceableCallIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-p getConnectTimeMillis()J
    .registers 3

    .line 473
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public blacklist getContactDisplayName()Ljava/lang/String;
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContactPhotoUri()Landroid/net/Uri;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o getCreationTimeMillis()J
    .registers 3

    .line 618
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-p getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 447
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public greylist-max-o getExtras()Landroid/os/Bundle;
    .registers 2

    .line 590
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getGatewayInfo()Landroid/telecom/GatewayInfo;
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public greylist-max-p getHandle()Landroid/net/Uri;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o getHandlePresentation()I
    .registers 2

    .line 486
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return v0
.end method

.method public greylist-max-p getId()Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIntentExtras()Landroid/os/Bundle;
    .registers 2

    .line 599
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getIsRttCallChanged()Z
    .registers 2

    .line 537
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return v0
.end method

.method public greylist-max-o getParcelableRttCall()Landroid/telecom/ParcelableRttCall;
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object v0
.end method

.method public greylist-max-o getParentCallId()Ljava/lang/String;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getProperties()I
    .registers 2

    .line 463
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return v0
.end method

.method public greylist-max-o getState()I
    .registers 2

    .line 438
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return v0
.end method

.method public greylist-max-o getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 573
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 467
    iget v0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return v0
.end method

.method public greylist-max-o getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;
    .registers 5

    .line 520
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_13

    .line 522
    :try_start_8
    new-instance v0, Landroid/telecom/VideoCallImpl;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-direct {v0, v1, p1, p2}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 526
    goto :goto_13

    .line 524
    :catch_12
    move-exception p1

    .line 529
    :cond_13
    :goto_13
    iget-object p1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    return-object p1
.end method

.method public blacklist getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public greylist-max-o getVideoState()I
    .registers 2

    .line 581
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return v0
.end method

.method public greylist-max-o isVideoCallProviderChanged()Z
    .registers 2

    .line 611
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 806
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s, parent:%s, children:%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 768
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 771
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 772
    iget p2, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget p2, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-wide v1, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 775
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 776
    iget p2, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 780
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 781
    iget-boolean p2, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 782
    nop

    .line 783
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz p2, :cond_54

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {p2}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_55

    :cond_54
    const/4 p2, 0x0

    .line 782
    :goto_55
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 784
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 785
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 786
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 787
    iget p2, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 789
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 790
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 791
    iget p2, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-boolean p2, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 793
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 794
    iget-wide v1, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 795
    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 800
    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 801
    iget p2, p0, Landroid/telecom/ParcelableCall;->mAudioProcessingUseCase:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    return-void
.end method
