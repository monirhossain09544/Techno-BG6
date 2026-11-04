.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Details;,
        Landroid/telecom/Call$RttCall;,
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$RejectReason;,
        Landroid/telecom/Call$AudioProcessingUseCase;,
        Landroid/telecom/Call$CallState;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_PROCESSING_USE_CASE_ASK_TO_HOLD:I = 0x3

.field public static final blacklist AUDIO_PROCESSING_USE_CASE_CALL_SCREENING:I = 0x2

.field public static final blacklist AUDIO_PROCESSING_USE_CASE_UNKNOWN:I = 0x0

.field public static final blacklist AUDIO_PROCESSING_USE_CASE_VOICEMAIL:I = 0x1

.field public static final whitelist AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EVENT_CLEAR_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.event.CLEAR_DIAGNOSTIC_MESSAGE"

.field public static final whitelist EVENT_DISPLAY_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.event.DISPLAY_DIAGNOSTIC_MESSAGE"

.field public static final whitelist EXTRA_ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "android.telecom.extra.ASSERTED_DISPLAY_NAME"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE_ID:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE_ID"

.field public static final whitelist EXTRA_IS_BUSINESS_CALL:Ljava/lang/String; = "android.telecom.extra.IS_BUSINESS_CALL"

.field public static final whitelist EXTRA_IS_SUPPRESSED_BY_DO_NOT_DISTURB:Ljava/lang/String; = "android.telecom.extra.IS_SUPPRESSED_BY_DO_NOT_DISTURB"

.field public static final blacklist EXTRA_IS_USING_VIDEO_RINGBACK:Ljava/lang/String; = "android.telecom.extra.IS_USING_VIDEO_RINGBACK"

.field public static final whitelist EXTRA_LAST_EMERGENCY_CALLBACK_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS"

.field public static final whitelist EXTRA_SILENT_RINGING_REQUESTED:Ljava/lang/String; = "android.telecom.extra.SILENT_RINGING_REQUESTED"

.field public static final whitelist EXTRA_SUGGESTED_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.extra.SUGGESTED_PHONE_ACCOUNTS"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelecomCall"

.field public static final whitelist REJECT_REASON_DECLINED:I = 0x1

.field public static final whitelist REJECT_REASON_UNWANTED:I = 0x2

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_AUDIO_PROCESSING:I = 0xc

.field public static final whitelist STATE_CONNECTING:I = 0x9

.field public static final whitelist STATE_DIALING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x7

.field public static final whitelist STATE_DISCONNECTING:I = 0xa

.field public static final whitelist STATE_HOLDING:I = 0x3

.field public static final whitelist STATE_NEW:I = 0x0

.field public static final whitelist STATE_PRE_DIAL_WAIT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_PULLING_CALL:I = 0xb

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist STATE_SELECT_PHONE_ACCOUNT:I = 0x8

.field public static final whitelist STATE_SIMULATED_RINGING:I = 0xd


# instance fields
.field private blacklist mActiveGenericConferenceChild:Ljava/lang/String;

.field private blacklist mAudioProcessingUseCase:I

.field private final greylist-max-o mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/CallbackRecord<",
            "Landroid/telecom/Call$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChildrenCached:Z

.field private final greylist-max-o mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDetails:Landroid/telecom/Call$Details;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mPhone:Landroid/telecom/Phone;

.field private greylist-max-o mRemainingPostDialSequence:Ljava/lang/String;

.field private greylist-max-o mRttCall:Landroid/telecom/Call$RttCall;

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoCallImpl:Landroid/telecom/VideoCallImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Landroid/telecom/Call;)Landroid/telecom/Phone;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmodifiableConferenceableCalls(Landroid/telecom/Call;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ILjava/lang/String;I)V
    .registers 8

    .line 2565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 1732
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 1733
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1735
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1736
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 1739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1740
    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 1742
    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2566
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 2567
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2568
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 2569
    iput p4, p0, Landroid/telecom/Call;->mState:I

    .line 2570
    iput-object p5, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    .line 2571
    iput p6, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    .line 2572
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->enableAudioProcessingUseCase()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 2573
    const/4 p1, 0x0

    iput p1, p0, Landroid/telecom/Call;->mAudioProcessingUseCase:I

    .line 2575
    :cond_4b
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .registers 7

    .line 2551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 1732
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 1733
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1735
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1736
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 1739
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1740
    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 1742
    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2552
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 2553
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2554
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 2555
    const/4 p1, 0x0

    iput p1, p0, Landroid/telecom/Call;->mState:I

    .line 2556
    iput-object p4, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    .line 2557
    iput p5, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    .line 2558
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->enableAudioProcessingUseCase()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 2559
    iput p1, p0, Landroid/telecom/Call;->mAudioProcessingUseCase:I

    .line 2561
    :cond_4b
    return-void
.end method

.method private static greylist-max-o areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 9

    .line 3018
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_78

    if-nez p1, :cond_8

    goto/16 :goto_78

    .line 3022
    :cond_8
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 3023
    return v1

    .line 3026
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3027
    if-eqz v3, :cond_6a

    .line 3028
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_2d} :catch_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_13 .. :try_end_2d} :catch_6d

    if-nez v4, :cond_30

    .line 3029
    return v1

    .line 3034
    :cond_30
    :try_start_30
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3035
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3036
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_4d

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_4d

    .line 3037
    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v3

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v5, v6}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 3038
    return v1

    .line 3041
    :cond_4d
    instance-of v5, v4, [B

    if-eqz v5, :cond_60

    instance-of v5, v3, [B

    if-eqz v5, :cond_60

    .line 3042
    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_67

    .line 3043
    return v1

    .line 3045
    :cond_60
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_64
    .catch Landroid/os/BadParcelableException; {:try_start_30 .. :try_end_64} :catch_68
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_64} :catch_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_30 .. :try_end_64} :catch_6d

    if-nez v3, :cond_67

    .line 3046
    return v1

    .line 3050
    :cond_67
    goto :goto_6a

    .line 3048
    :catch_68
    move-exception p0

    .line 3049
    return v1

    .line 3052
    :cond_6a
    :goto_6a
    goto :goto_1b

    .line 3067
    :cond_6b
    nop

    .line 3068
    return v0

    .line 3053
    :catch_6d
    move-exception p0

    .line 3065
    const-string p1, "areBundlesEqual: failed!"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "TelecomCall"

    invoke-static {v2, p0, p1, v0}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3066
    return v1

    .line 3019
    :cond_78
    :goto_78
    if-ne p0, p1, :cond_7b

    goto :goto_7c

    :cond_7b
    move v0, v1

    :goto_7c
    return v0
.end method

.method private greylist-max-o fireCallDestroyed()V
    .registers 6

    .line 2916
    nop

    .line 2917
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2919
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 2921
    :cond_e
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2922
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2923
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/telecom/Call$8;

    invoke-direct {v4, p0, v2, p0, v1}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2947
    goto :goto_14

    .line 2948
    :cond_33
    return-void
.end method

.method private greylist-max-o fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2870
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2871
    nop

    .line 2872
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2873
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$5;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2879
    goto :goto_6

    .line 2880
    :cond_26
    return-void
.end method

.method private greylist-max-o fireChildrenChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 2844
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2845
    nop

    .line 2846
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2847
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$3;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2853
    goto :goto_6

    .line 2854
    :cond_26
    return-void
.end method

.method private greylist-max-o fireConferenceableCallsChanged()V
    .registers 5

    .line 2951
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2952
    nop

    .line 2953
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2954
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$9;

    invoke-direct {v3, p0, v2, p0}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2960
    goto :goto_6

    .line 2961
    :cond_26
    return-void
.end method

.method private greylist-max-o fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .registers 6

    .line 2857
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2858
    nop

    .line 2859
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2860
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$4;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2866
    goto :goto_6

    .line 2867
    :cond_26
    return-void
.end method

.method private greylist-max-o fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    .line 2972
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2973
    nop

    .line 2974
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/telecom/Call$Callback;

    .line 2975
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$10;

    move-object v6, p0

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/telecom/Call$10;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2981
    goto :goto_6

    .line 2982
    :cond_2b
    return-void
.end method

.method private greylist-max-o fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V
    .registers 7

    .line 2990
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2991
    nop

    .line 2992
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2993
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p0, p1, p2}, Landroid/telecom/Call$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2994
    goto :goto_6

    .line 2995
    :cond_26
    return-void
.end method

.method private greylist-max-o fireOnRttModeChanged(I)V
    .registers 6

    .line 3003
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 3004
    nop

    .line 3005
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 3006
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2, p0, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3007
    goto :goto_6

    .line 3008
    :cond_26
    return-void
.end method

.method private greylist-max-o fireParentChanged(Landroid/telecom/Call;)V
    .registers 6

    .line 2831
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2832
    nop

    .line 2833
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2834
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$2;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2840
    goto :goto_6

    .line 2841
    :cond_26
    return-void
.end method

.method private greylist-max-o firePostDialWait(Ljava/lang/String;)V
    .registers 6

    .line 2896
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2897
    nop

    .line 2898
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2899
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$7;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2905
    goto :goto_6

    .line 2906
    :cond_26
    return-void
.end method

.method private greylist-max-o fireStateChanged(I)V
    .registers 6

    .line 2818
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2819
    nop

    .line 2820
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2821
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$1;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2827
    goto :goto_6

    .line 2828
    :cond_26
    return-void
.end method

.method private greylist-max-o fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .registers 6

    .line 2883
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2884
    nop

    .line 2885
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2886
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$6;

    invoke-direct {v3, p0, v2, p0, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2892
    goto :goto_6

    .line 2893
    :cond_26
    return-void
.end method

.method static synthetic blacklist lambda$fireOnIsRttChanged$4(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .registers 4

    .line 2993
    invoke-virtual {p0, p1, p2, p3}, Landroid/telecom/Call$Callback;->onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method

.method static synthetic blacklist lambda$fireOnRttModeChanged$5(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3

    .line 3006
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttModeChanged(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverComplete$3(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V
    .registers 2

    .line 2813
    invoke-virtual {p0, p1}, Landroid/telecom/Call$Callback;->onHandoverComplete(Landroid/telecom/Call;)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverFailed$2(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3

    .line 2804
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onHandoverFailed(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttInitiationFailure$1(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3

    .line 2795
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttInitiationFailure(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttUpgradeRequest$0(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3

    .line 2786
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttRequest(Landroid/telecom/Call;I)V

    return-void
.end method

.method private static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 3

    .line 2494
    packed-switch p0, :pswitch_data_36

    .line 2518
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/telecom/Call;

    const-string v1, "Unknown state %d"

    invoke-static {v0, v1, p0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2519
    const-string p0, "UNKNOWN"

    return-object p0

    .line 2514
    :pswitch_15
    const-string p0, "SIMULATED_RINGING"

    return-object p0

    .line 2516
    :pswitch_18
    const-string p0, "AUDIO_PROCESSING"

    return-object p0

    .line 2510
    :pswitch_1b
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 2508
    :pswitch_1e
    const-string p0, "CONNECTING"

    return-object p0

    .line 2512
    :pswitch_21
    const-string p0, "SELECT_PHONE_ACCOUNT"

    return-object p0

    .line 2506
    :pswitch_24
    const-string p0, "DISCONNECTED"

    return-object p0

    .line 2502
    :pswitch_27
    const-string p0, "ACTIVE"

    return-object p0

    .line 2504
    :pswitch_2a
    const-string p0, "HOLDING"

    return-object p0

    .line 2498
    :pswitch_2d
    const-string p0, "RINGING"

    return-object p0

    .line 2500
    :pswitch_30
    const-string p0, "DIALING"

    return-object p0

    .line 2496
    :pswitch_33
    const-string p0, "NEW"

    return-object p0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_3
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public whitelist addConferenceParticipants(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2042
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 2043
    return-void
.end method

.method public whitelist addListener(Landroid/telecom/Call$Listener;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2533
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 2534
    return-void
.end method

.method public whitelist answer(I)V
    .registers 4

    .line 1767
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1768
    return-void
.end method

.method public whitelist conference(Landroid/telecom/Call;)V
    .registers 4

    .line 2008
    if-eqz p1, :cond_b

    .line 2009
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object p1, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :cond_b
    return-void
.end method

.method public whitelist deflect(Landroid/net/Uri;)V
    .registers 4

    .line 1776
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1777
    return-void
.end method

.method public whitelist disconnect()V
    .registers 3

    .line 1827
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1828
    return-void
.end method

.method public whitelist enterBackgroundAudioProcessing()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1868
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1869
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call must be active or ringing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1871
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;I)V

    .line 1873
    return-void
.end method

.method public blacklist enterBackgroundAudioProcessing(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1900
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1901
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call must be active or ringing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1903
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;I)V

    .line 1904
    return-void
.end method

.method public whitelist exitBackgroundAudioProcessing(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1920
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_e

    .line 1923
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 1924
    return-void

    .line 1921
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call must in the audio processing state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAudioProcessingUseCase()I
    .registers 3

    .line 1935
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    .line 1938
    iget v0, p0, Landroid/telecom/Call;->mAudioProcessingUseCase:I

    return v0

    .line 1936
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call is not in state AUDIO_PROCESSING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCannedTextResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2396
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getChildren()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 2318
    iget-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v0, :cond_30

    .line 2319
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 2320
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2322
    iget-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2323
    iget-object v2, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v2, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v1

    .line 2324
    if-nez v1, :cond_2a

    .line 2326
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_2f

    .line 2328
    :cond_2a
    iget-object v2, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    :goto_2f
    goto :goto_12

    .line 2333
    :cond_30
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConferenceableCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 2342
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDetails()Landroid/telecom/Call$Details;
    .registers 2

    .line 2415
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public whitelist getGenericConferenceActiveChildCall()Landroid/telecom/Call;
    .registers 3

    .line 2375
    iget-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2376
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    .line 2378
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getParent()Landroid/telecom/Call;
    .registers 3

    .line 2305
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2306
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    .line 2308
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemainingPostDialSequence()Ljava/lang/String;
    .registers 2

    .line 1759
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRttCall()Landroid/telecom/Call$RttCall;
    .registers 2

    .line 2424
    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2353
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public whitelist getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .registers 2

    .line 2405
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    return-object v0
.end method

.method public whitelist handoverTo(Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .registers 6

    .line 2187
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telecom/InCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 2188
    return-void
.end method

.method public whitelist hold()V
    .registers 3

    .line 1834
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method final greylist-max-o internalGetCallId()Ljava/lang/String;
    .registers 2

    .line 2579
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final greylist-max-o internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 2778
    invoke-direct {p0, p1, p2}, Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2779
    return-void
.end method

.method final greylist-max-o internalOnHandoverComplete()V
    .registers 5

    .line 2810
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2811
    nop

    .line 2812
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2813
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, p0}, Landroid/telecom/Call$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2814
    goto :goto_6

    .line 2815
    :cond_26
    return-void
.end method

.method final greylist-max-o internalOnHandoverFailed(I)V
    .registers 6

    .line 2801
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2802
    nop

    .line 2803
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2804
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p0, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2805
    goto :goto_6

    .line 2806
    :cond_26
    return-void
.end method

.method final greylist-max-o internalOnRttInitiationFailure(I)V
    .registers 6

    .line 2792
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2793
    nop

    .line 2794
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2795
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, p0, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda5;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2796
    goto :goto_6

    .line 2797
    :cond_26
    return-void
.end method

.method final greylist-max-o internalOnRttUpgradeRequest(I)V
    .registers 6

    .line 2783
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2784
    nop

    .line 2785
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call$Callback;

    .line 2786
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/telecom/Call$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2, p0, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2787
    goto :goto_6

    .line 2788
    :cond_26
    return-void
.end method

.method final greylist-max-o internalSetDisconnected()V
    .registers 28

    .line 2743
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telecom/Call;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_a1

    .line 2744
    iput v2, v0, Landroid/telecom/Call;->mState:I

    .line 2745
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v1, :cond_99

    .line 2746
    new-instance v2, Landroid/telecom/Call$Details;

    iget v3, v0, Landroid/telecom/Call;->mState:I

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2747
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2748
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v5

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2749
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v6

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2750
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2751
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v8

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2752
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2753
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v10

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2754
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v11

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2755
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2756
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v13

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2757
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v15

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2758
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v16

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2759
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v17

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2760
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2761
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v19

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2762
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v20

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2763
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2764
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v23

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2765
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result v24

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2766
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactPhotoUri()Landroid/net/Uri;

    move-result-object v25

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2767
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAssociatedUser()Landroid/os/UserHandle;

    move-result-object v26

    invoke-direct/range {v2 .. v26}, Landroid/telecom/Call$Details;-><init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;IILandroid/net/Uri;Landroid/os/UserHandle;)V

    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2769
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 2771
    :cond_99
    iget v1, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 2772
    invoke-direct {v0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 2774
    :cond_a1
    return-void
.end method

.method final greylist-max-o internalSetPostDialWait(Ljava/lang/String;)V
    .registers 2

    .line 2737
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 2738
    iget-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 2739
    return-void
.end method

.method final greylist-max-o internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 2586
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v2

    .line 2587
    iget-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 2588
    if-nez v3, :cond_12

    .line 2589
    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2592
    :cond_12
    nop

    .line 2593
    iget-object v2, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2594
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 2595
    nop

    .line 2596
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2597
    move v2, v4

    goto :goto_37

    .line 2600
    :cond_36
    move v2, v5

    :goto_37
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    const/4 v7, 0x0

    if-nez v6, :cond_3e

    move-object v6, v7

    goto :goto_44

    .line 2601
    :cond_3e
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v6}, Landroid/telecom/VideoCallImpl;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    .line 2602
    :goto_44
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    .line 2606
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v9

    if-eqz v9, :cond_56

    .line 2607
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    move v6, v4

    goto :goto_57

    :cond_56
    move v6, v5

    .line 2608
    :goto_57
    if-eqz v6, :cond_79

    .line 2609
    iget-object v8, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v8, :cond_62

    .line 2610
    iget-object v8, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v8}, Landroid/telecom/VideoCallImpl;->destroy()V

    .line 2612
    :cond_62
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 2613
    iget-object v8, v0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    iget v9, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v9}, Landroid/telecom/ParcelableCall;->getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;

    move-result-object v8

    goto :goto_76

    :cond_73
    move-object/from16 v10, p1

    move-object v8, v7

    :goto_76
    iput-object v8, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    goto :goto_7b

    .line 2608
    :cond_79
    move-object/from16 v10, p1

    .line 2616
    :goto_7b
    iget-object v8, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v8, :cond_8c

    .line 2617
    iget-object v8, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telecom/VideoCallImpl;->setVideoState(I)V

    .line 2620
    :cond_8c
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v8

    .line 2621
    iget v9, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    const/16 v11, 0x1e

    if-ge v9, v11, :cond_9b

    const/16 v9, 0xd

    if-ne v8, v9, :cond_9b

    .line 2622
    const/4 v8, 0x2

    .line 2624
    :cond_9b
    iget v9, v0, Landroid/telecom/Call;->mState:I

    if-eq v9, v8, :cond_a1

    move v9, v4

    goto :goto_a2

    :cond_a1
    move v9, v5

    .line 2625
    :goto_a2
    if-eqz v9, :cond_a6

    .line 2626
    iput v8, v0, Landroid/telecom/Call;->mState:I

    .line 2629
    :cond_a6
    const/16 v11, 0xc

    if-ne v8, v11, :cond_b0

    .line 2630
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getAudioProcessingUseCase()I

    move-result v8

    iput v8, v0, Landroid/telecom/Call;->mAudioProcessingUseCase:I

    .line 2633
    :cond_b0
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v8

    .line 2634
    iget-object v11, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-static {v11, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .line 2635
    if-nez v11, :cond_be

    .line 2636
    iput-object v8, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 2639
    :cond_be
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v8

    .line 2640
    iget-object v12, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-static {v8, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 2641
    if-nez v8, :cond_da

    .line 2642
    iget-object v12, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 2643
    iget-object v12, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2644
    iput-boolean v5, v0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 2647
    :cond_da
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getActiveChildCallId()Ljava/lang/String;

    move-result-object v12

    .line 2648
    iget-object v13, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 2650
    if-nez v13, :cond_e8

    .line 2651
    iput-object v12, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 2654
    :cond_e8
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v12

    .line 2655
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 2656
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_115

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2657
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_114

    .line 2658
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/Call;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2660
    :cond_114
    goto :goto_f9

    .line 2662
    :cond_115
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v1, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 2663
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2664
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2665
    invoke-direct {v0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 2668
    :cond_12a
    nop

    .line 2669
    nop

    .line 2670
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v1

    if-eqz v1, :cond_18e

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2671
    const/16 v12, 0x400

    invoke-virtual {v1, v12}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 2672
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    .line 2673
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v10, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2675
    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getReceiveStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2677
    new-instance v10, Ljava/io/OutputStreamWriter;

    new-instance v12, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2679
    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getTransmitStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v12, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2681
    new-instance v14, Landroid/telecom/Call$RttCall;

    iget-object v15, v0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2682
    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getRttMode()I

    move-result v18

    iget-object v1, v0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    move-object/from16 v19, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Landroid/telecom/Call$RttCall;-><init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V

    .line 2683
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-nez v1, :cond_17a

    .line 2684
    move v1, v4

    move v7, v5

    goto :goto_18b

    .line 2685
    :cond_17a
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v1}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v1

    invoke-virtual {v14}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v7

    if-eq v1, v7, :cond_189

    .line 2686
    move v7, v4

    move v1, v5

    goto :goto_18b

    .line 2685
    :cond_189
    move v1, v5

    move v7, v1

    .line 2688
    :goto_18b
    iput-object v14, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    .line 2689
    goto :goto_1ab

    :cond_18e
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v1, :cond_1a9

    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    if-nez v1, :cond_1a9

    .line 2690
    invoke-virtual {v10}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 2691
    nop

    .line 2692
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v1}, Landroid/telecom/Call$RttCall;->close()V

    .line 2693
    iput-object v7, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    move v1, v4

    move v7, v5

    goto :goto_1ab

    .line 2699
    :cond_1a9
    move v1, v5

    move v7, v1

    :goto_1ab
    if-eqz v9, :cond_1b2

    .line 2700
    iget v10, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v10}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 2702
    :cond_1b2
    if-nez v3, :cond_1b9

    .line 2703
    iget-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v3}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 2705
    :cond_1b9
    if-eqz v2, :cond_1c0

    .line 2706
    iget-object v2, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 2708
    :cond_1c0
    if-eqz v6, :cond_1c7

    .line 2709
    iget-object v2, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 2711
    :cond_1c7
    if-nez v11, :cond_1d0

    .line 2712
    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 2714
    :cond_1d0
    if-eqz v8, :cond_1d4

    if-nez v13, :cond_1db

    .line 2715
    :cond_1d4
    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 2717
    :cond_1db
    if-eqz v1, :cond_1e8

    .line 2718
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v1, :cond_1e2

    goto :goto_1e3

    :cond_1e2
    move v4, v5

    :goto_1e3
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-direct {v0, v4, v1}, Landroid/telecom/Call;->fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V

    .line 2720
    :cond_1e8
    if-eqz v7, :cond_1f3

    .line 2721
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v1}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireOnRttModeChanged(I)V

    .line 2730
    :cond_1f3
    iget v1, v0, Landroid/telecom/Call;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1fd

    if-eqz v9, :cond_1fd

    .line 2731
    invoke-direct {v0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 2733
    :cond_1fd
    return-void
.end method

.method public whitelist isRttActive()Z
    .registers 3

    .line 2432
    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist mergeConference()V
    .registers 3

    .line 2025
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 2026
    return-void
.end method

.method public whitelist phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5

    .line 1998
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 2000
    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .registers 4

    .line 1957
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 1958
    return-void
.end method

.method public whitelist postDialContinue(Z)V
    .registers 4

    .line 1990
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 1991
    return-void
.end method

.method public whitelist pullExternalCall()V
    .registers 3

    .line 2058
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2059
    return-void

    .line 2062
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->pullExternalCall(Ljava/lang/String;)V

    .line 2063
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .registers 5

    .line 2250
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2253
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2254
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2255
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2265
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2268
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .registers 5

    .line 2235
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2238
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2239
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2240
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 2216
    if-nez p1, :cond_3

    .line 2217
    return-void

    .line 2220
    :cond_3
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 2221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2223
    :cond_e
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2224
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2225
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;)V
    .registers 3

    .line 2441
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 2442
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .registers 5

    .line 2451
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 2453
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    .line 2454
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2456
    :cond_16
    return-void
.end method

.method public whitelist reject(I)V
    .registers 4

    .line 1796
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;I)V

    .line 1797
    return-void
.end method

.method public whitelist reject(ZLjava/lang/String;)V
    .registers 5

    .line 1786
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1787
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2278
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_25

    .line 2279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2280
    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2281
    goto :goto_8

    .line 2282
    :cond_1a
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 2283
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2286
    :cond_25
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 2287
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 2

    .line 2295
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/Call;->removeExtras(Ljava/util/List;)V

    .line 2296
    return-void
.end method

.method public whitelist removeListener(Landroid/telecom/Call$Listener;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2546
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 2547
    return-void
.end method

.method public whitelist respondToRttRequest(IZ)V
    .registers 5

    .line 2120
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 2121
    return-void
.end method

.method public whitelist sendCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 2100
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telecom/InCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2101
    return-void
.end method

.method public whitelist sendRttRequest()V
    .registers 3

    .line 2109
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->sendRttRequest(Ljava/lang/String;)V

    .line 2110
    return-void
.end method

.method public whitelist splitFromConference()V
    .registers 3

    .line 2018
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 2019
    return-void
.end method

.method public whitelist stopDtmfTone()V
    .registers 3

    .line 1968
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 1969
    return-void
.end method

.method public whitelist stopRtt()V
    .registers 3

    .line 2195
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopRtt(Ljava/lang/String;)V

    .line 2196
    return-void
.end method

.method public whitelist swapConference()V
    .registers 3

    .line 2032
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 2033
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2478
    const-string v1, "Call [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2480
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/Call;->mState:I

    .line 2481
    invoke-static {v1}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2482
    const-string v1, ", audioProcessingUseCase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/Call;->mAudioProcessingUseCase:I

    .line 2483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2484
    const-string v1, ", details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2486
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2477
    return-object v0
.end method

.method public blacklist transfer(Landroid/net/Uri;Z)V
    .registers 5

    .line 1809
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1810
    return-void
.end method

.method public blacklist transfer(Landroid/telecom/Call;)V
    .registers 4

    .line 1820
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object p1, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method public whitelist unhold()V
    .registers 3

    .line 1841
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/Call$Callback;)V
    .registers 5

    .line 2465
    if-eqz p1, :cond_26

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    .line 2466
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2467
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_25

    .line 2468
    iget-object p1, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2469
    goto :goto_26

    .line 2471
    :cond_25
    goto :goto_d

    .line 2473
    :cond_26
    :goto_26
    return-void
.end method
