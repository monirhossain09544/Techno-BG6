.class public Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
.super Ljava/lang/Object;
.source "ParcelableCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableCallBuilder"
.end annotation


# instance fields
.field private blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mActiveChildCallId:Ljava/lang/String;

.field private blacklist mAssociatedUser:Landroid/os/UserHandle;

.field private blacklist mAudioProcessingUseCase:I

.field private blacklist mCallDirection:I

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private blacklist mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCapabilities:I

.field private blacklist mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectTimeMillis:J

.field private blacklist mContactDisplayName:Ljava/lang/String;

.field private blacklist mContactPhotoUri:Landroid/net/Uri;

.field private blacklist mCreationTimeMillis:J

.field private blacklist mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private blacklist mHandle:Landroid/net/Uri;

.field private blacklist mHandlePresentation:I

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mIntentExtras:Landroid/os/Bundle;

.field private blacklist mIsRttCallChanged:Z

.field private blacklist mIsVideoCallProviderChanged:Z

.field private blacklist mParentCallId:Ljava/lang/String;

.field private blacklist mProperties:I

.field private blacklist mRttCall:Landroid/telecom/ParcelableRttCall;

.field private blacklist mState:I

.field private blacklist mStatusHints:Landroid/telecom/StatusHints;

.field private blacklist mSupportedAudioRoutes:I

.field private blacklist mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private blacklist mVideoState:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 4

    .line 285
    new-instance v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;-><init>()V

    .line 286
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mId:Ljava/lang/String;

    .line 287
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmState(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mState:I

    .line 288
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmDisconnectCause(Landroid/telecom/ParcelableCall;)Landroid/telecom/DisconnectCause;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 289
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCannedSmsResponses(Landroid/telecom/ParcelableCall;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCannedSmsResponses:Ljava/util/List;

    .line 290
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCapabilities(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCapabilities:I

    .line 291
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmProperties(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mProperties:I

    .line 292
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmSupportedAudioRoutes(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mSupportedAudioRoutes:I

    .line 293
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmConnectTimeMillis(Landroid/telecom/ParcelableCall;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mConnectTimeMillis:J

    .line 294
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmHandle(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mHandle:Landroid/net/Uri;

    .line 295
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmHandlePresentation(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mHandlePresentation:I

    .line 296
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCallerDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerDisplayName:Ljava/lang/String;

    .line 297
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCallerDisplayNamePresentation(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerDisplayNamePresentation:I

    .line 299
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmGatewayInfo(Landroid/telecom/ParcelableCall;)Landroid/telecom/GatewayInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 300
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmAccountHandle(Landroid/telecom/ParcelableCall;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 301
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmIsVideoCallProviderChanged(Landroid/telecom/ParcelableCall;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIsVideoCallProviderChanged:Z

    .line 302
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmVideoCallProvider(Landroid/telecom/ParcelableCall;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 303
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmIsRttCallChanged(Landroid/telecom/ParcelableCall;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIsRttCallChanged:Z

    .line 304
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmRttCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mRttCall:Landroid/telecom/ParcelableRttCall;

    .line 305
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmParentCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mParentCallId:Ljava/lang/String;

    .line 306
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmChildCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mChildCallIds:Ljava/util/List;

    .line 307
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmStatusHints(Landroid/telecom/ParcelableCall;)Landroid/telecom/StatusHints;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mStatusHints:Landroid/telecom/StatusHints;

    .line 308
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmVideoState(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mVideoState:I

    .line 309
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmConferenceableCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mConferenceableCallIds:Ljava/util/List;

    .line 310
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmIntentExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIntentExtras:Landroid/os/Bundle;

    .line 311
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mExtras:Landroid/os/Bundle;

    .line 312
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCreationTimeMillis(Landroid/telecom/ParcelableCall;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCreationTimeMillis:J

    .line 313
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCallDirection(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallDirection:I

    .line 314
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmCallerNumberVerificationStatus(Landroid/telecom/ParcelableCall;)I

    move-result v1

    iput v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerNumberVerificationStatus:I

    .line 316
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmContactDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mContactDisplayName:Ljava/lang/String;

    .line 317
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmActiveChildCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mActiveChildCallId:Ljava/lang/String;

    .line 318
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmContactPhotoUri(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mContactPhotoUri:Landroid/net/Uri;

    .line 319
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmAssociatedUser(Landroid/telecom/ParcelableCall;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAssociatedUser:Landroid/os/UserHandle;

    .line 320
    invoke-static {p0}, Landroid/telecom/ParcelableCall;->-$$Nest$fgetmAudioProcessingUseCase(Landroid/telecom/ParcelableCall;)I

    move-result p0

    iput p0, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAudioProcessingUseCase:I

    .line 321
    return-object v0
.end method


# virtual methods
.method public blacklist createParcelableCall()Landroid/telecom/ParcelableCall;
    .registers 40

    .line 248
    move-object/from16 v0, p0

    new-instance v1, Landroid/telecom/ParcelableCall;

    move-object v2, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mId:Ljava/lang/String;

    move-object v3, v2

    iget v2, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mState:I

    move-object v4, v3

    iget-object v3, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    move-object v5, v4

    iget-object v4, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCannedSmsResponses:Ljava/util/List;

    move-object v6, v5

    iget v5, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCapabilities:I

    move-object v7, v6

    iget v6, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mProperties:I

    move-object v8, v7

    iget v7, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mSupportedAudioRoutes:I

    move-object v10, v8

    iget-wide v8, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mConnectTimeMillis:J

    move-object v11, v10

    iget-object v10, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mHandle:Landroid/net/Uri;

    move-object v12, v11

    iget v11, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mHandlePresentation:I

    move-object v13, v12

    iget-object v12, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerDisplayName:Ljava/lang/String;

    move-object v14, v13

    iget v13, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerDisplayNamePresentation:I

    move-object v15, v14

    iget-object v14, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    move-object/from16 v16, v15

    iget-object v15, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIsVideoCallProviderChanged:Z

    move/from16 v18, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIsRttCallChanged:Z

    move/from16 v20, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mRttCall:Landroid/telecom/ParcelableRttCall;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mParentCallId:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mChildCallIds:Ljava/util/List;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mStatusHints:Landroid/telecom/StatusHints;

    move-object/from16 v24, v1

    iget v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mVideoState:I

    move/from16 v25, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mConferenceableCallIds:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v29, v1

    move/from16 v28, v2

    iget-wide v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCreationTimeMillis:J

    move-wide/from16 v30, v1

    iget v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallDirection:I

    iget v2, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerNumberVerificationStatus:I

    move/from16 v32, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mContactDisplayName:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mActiveChildCallId:Ljava/lang/String;

    move-object/from16 v34, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mContactPhotoUri:Landroid/net/Uri;

    move-object/from16 v35, v1

    iget-object v1, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAssociatedUser:Landroid/os/UserHandle;

    iget v0, v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAudioProcessingUseCase:I

    move-object/from16 v36, v35

    move/from16 v35, v0

    move-object/from16 v0, v16

    move/from16 v16, v18

    move/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v29

    move/from16 v29, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move/from16 v23, v25

    move-object/from16 v25, v27

    move-wide/from16 v37, v30

    move/from16 v30, v2

    move/from16 v2, v28

    move-wide/from16 v27, v37

    move-object/from16 v31, v33

    move-object/from16 v33, v36

    invoke-direct/range {v0 .. v35}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;ZLandroid/telecom/ParcelableRttCall;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;I)V

    return-object v0
.end method

.method public blacklist setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 145
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 146
    return-object p0
.end method

.method public blacklist setActiveChildCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 228
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mActiveChildCallId:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public blacklist setAssociatedUser(Landroid/os/UserHandle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 238
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAssociatedUser:Landroid/os/UserHandle;

    .line 239
    return-object p0
.end method

.method public blacklist setAudioProcessingUseCase(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 243
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mAudioProcessingUseCase:I

    .line 244
    return-object p0
.end method

.method public blacklist setCallDirection(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 212
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallDirection:I

    .line 213
    return-object p0
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 129
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerDisplayName:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public blacklist setCallerDisplayNamePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 135
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerDisplayNamePresentation:I

    .line 136
    return-object p0
.end method

.method public blacklist setCallerNumberVerificationStatus(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 218
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCallerNumberVerificationStatus:I

    .line 219
    return-object p0
.end method

.method public blacklist setCannedSmsResponses(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/ParcelableCall$ParcelableCallBuilder;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCannedSmsResponses:Ljava/util/List;

    .line 95
    return-object p0
.end method

.method public blacklist setCapabilities(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 99
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCapabilities:I

    .line 100
    return-object p0
.end method

.method public blacklist setChildCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/ParcelableCall$ParcelableCallBuilder;"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mChildCallIds:Ljava/util/List;

    .line 177
    return-object p0
.end method

.method public blacklist setConferenceableCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/ParcelableCall$ParcelableCallBuilder;"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mConferenceableCallIds:Ljava/util/List;

    .line 193
    return-object p0
.end method

.method public blacklist setConnectTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 3

    .line 114
    iput-wide p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mConnectTimeMillis:J

    .line 115
    return-object p0
.end method

.method public blacklist setContactDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 223
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mContactDisplayName:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public blacklist setContactPhotoUri(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 233
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mContactPhotoUri:Landroid/net/Uri;

    .line 234
    return-object p0
.end method

.method public blacklist setCreationTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 3

    .line 207
    iput-wide p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mCreationTimeMillis:J

    .line 208
    return-object p0
.end method

.method public blacklist setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 89
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 90
    return-object p0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 202
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mExtras:Landroid/os/Bundle;

    .line 203
    return-object p0
.end method

.method public blacklist setGatewayInfo(Landroid/telecom/GatewayInfo;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 140
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 141
    return-object p0
.end method

.method public blacklist setHandle(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 119
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mHandle:Landroid/net/Uri;

    .line 120
    return-object p0
.end method

.method public blacklist setHandlePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 124
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mHandlePresentation:I

    .line 125
    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 79
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mId:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public blacklist setIntentExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 197
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIntentExtras:Landroid/os/Bundle;

    .line 198
    return-object p0
.end method

.method public blacklist setIsRttCallChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 161
    iput-boolean p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIsRttCallChanged:Z

    .line 162
    return-object p0
.end method

.method public blacklist setIsVideoCallProviderChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 151
    iput-boolean p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mIsVideoCallProviderChanged:Z

    .line 152
    return-object p0
.end method

.method public blacklist setParentCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 171
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mParentCallId:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public blacklist setProperties(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 104
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mProperties:I

    .line 105
    return-object p0
.end method

.method public blacklist setRttCall(Landroid/telecom/ParcelableRttCall;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 166
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mRttCall:Landroid/telecom/ParcelableRttCall;

    .line 167
    return-object p0
.end method

.method public blacklist setState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 84
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mState:I

    .line 85
    return-object p0
.end method

.method public blacklist setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 181
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mStatusHints:Landroid/telecom/StatusHints;

    .line 182
    return-object p0
.end method

.method public blacklist setSupportedAudioRoutes(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 109
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mSupportedAudioRoutes:I

    .line 110
    return-object p0
.end method

.method public blacklist setVideoCallProvider(Lcom/android/internal/telecom/IVideoProvider;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 156
    iput-object p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 157
    return-object p0
.end method

.method public blacklist setVideoState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    .registers 2

    .line 186
    iput p1, p0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->mVideoState:I

    .line 187
    return-object p0
.end method
