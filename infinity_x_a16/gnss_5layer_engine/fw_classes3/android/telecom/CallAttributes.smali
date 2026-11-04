.class public final Landroid/telecom/CallAttributes;
.super Ljava/lang/Object;
.source "CallAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAttributes$Builder;,
        Landroid/telecom/CallAttributes$CallCapability;,
        Landroid/telecom/CallAttributes$CallType;,
        Landroid/telecom/CallAttributes$Direction;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CALL:I = 0x1

.field public static final blacklist CALLER_PID_KEY:Ljava/lang/String; = "CallerPid"

.field public static final blacklist CALLER_UID_KEY:Ljava/lang/String; = "CallerUid"

.field public static final blacklist CALL_CAPABILITIES_KEY:Ljava/lang/String; = "TelecomCapabilities"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIRECTION_INCOMING:I = 0x1

.field public static final whitelist DIRECTION_OUTGOING:I = 0x2

.field public static final blacklist DISPLAY_NAME_KEY:Ljava/lang/String; = "DisplayName"

.field public static final whitelist SUPPORTS_SET_INACTIVE:I = 0x2

.field public static final whitelist SUPPORTS_STREAM:I = 0x4

.field public static final whitelist SUPPORTS_TRANSFER:I = 0x8

.field public static final whitelist SUPPORTS_VIDEO_CALLING:I = 0x10

.field public static final whitelist VIDEO_CALL:I = 0x2


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private final blacklist mCallCapabilities:I

.field private final blacklist mCallType:I

.field private final blacklist mDirection:I

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mIsLogExcluded:Z

.field private final blacklist mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 329
    new-instance v0, Landroid/telecom/CallAttributes$1;

    invoke-direct {v0}, Landroid/telecom/CallAttributes$1;-><init>()V

    sput-object v0, Landroid/telecom/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIIZ)V
    .registers 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 86
    iput-object p2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    .line 87
    iput-object p3, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    .line 88
    iput p4, p0, Landroid/telecom/CallAttributes;->mDirection:I

    .line 89
    iput p5, p0, Landroid/telecom/CallAttributes;->mCallType:I

    .line 90
    iput p6, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    .line 91
    iput-boolean p7, p0, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIIZLandroid/telecom/CallAttributes-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telecom/CallAttributes;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIIZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 381
    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_4a

    .line 384
    :cond_e
    check-cast p1, Landroid/telecom/CallAttributes;

    .line 385
    iget v1, p0, Landroid/telecom/CallAttributes;->mDirection:I

    iget v2, p1, Landroid/telecom/CallAttributes;->mDirection:I

    if-ne v1, v2, :cond_48

    iget v1, p0, Landroid/telecom/CallAttributes;->mCallType:I

    iget v2, p1, Landroid/telecom/CallAttributes;->mCallType:I

    if-ne v1, v2, :cond_48

    iget v1, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    iget v2, p1, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    if-ne v1, v2, :cond_48

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p1, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 388
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p1, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    .line 389
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    .line 390
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    iget-boolean p1, p1, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    if-ne v1, p1, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    nop

    .line 385
    :goto_49
    return v0

    .line 382
    :cond_4a
    :goto_4a
    return v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCallCapabilities()I
    .registers 2

    .line 306
    iget v0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    return v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/telecom/CallAttributes;->mCallType:I

    return v0
.end method

.method public whitelist getDirection()I
    .registers 2

    .line 284
    iget v0, p0, Landroid/telecom/CallAttributes;->mDirection:I

    return v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 262
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 399
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/telecom/CallAttributes;->mDirection:I

    .line 400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 399
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isLogExcluded()Z
    .registers 2

    .line 299
    iget-boolean v0, p0, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    const-string/jumbo v1, "{ CallAttributes: [phoneAccountHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string v2, "], [contactName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    .line 360
    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    const-string v2, "], [address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    .line 362
    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string v2, "], [direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/CallAttributes;->mDirection:I

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string v2, "], [callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/CallAttributes;->mCallType:I

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string v2, "], [mCallCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string v2, "], [mIsLogExcluded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    const-string v2, "]  }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 316
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 317
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 319
    iget p2, p0, Landroid/telecom/CallAttributes;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget p2, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget p2, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-boolean p2, p0, Landroid/telecom/CallAttributes;->mIsLogExcluded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    return-void
.end method
