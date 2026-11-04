.class public final Landroid/telecom/ParcelableConference;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConference$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableConference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private final blacklist mAddressPresentation:I

.field private final blacklist mCallDirection:I

.field private final blacklist mCallerDisplayName:Ljava/lang/String;

.field private final blacklist mCallerDisplayNamePresentation:I

.field private final greylist-max-o mConnectElapsedTimeMillis:J

.field private final greylist-max-o mConnectTimeMillis:J

.field private final greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionProperties:I

.field private final blacklist mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mRingbackRequested:Z

.field private final greylist-max-o mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 298
    new-instance v0, Landroid/telecom/ParcelableConference$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConference$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZI)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IJJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/os/Bundle;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "ZI)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 179
    iput p2, p0, Landroid/telecom/ParcelableConference;->mState:I

    .line 180
    iput p3, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    .line 181
    iput p4, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    .line 182
    iput-object p5, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    .line 183
    iput-object p6, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 184
    iput p7, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    .line 185
    iput-wide p8, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    .line 186
    iput-object p12, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 187
    iput-object p13, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    .line 188
    iput-wide p10, p0, Landroid/telecom/ParcelableConference;->mConnectElapsedTimeMillis:J

    .line 189
    iput-object p14, p0, Landroid/telecom/ParcelableConference;->mAddress:Landroid/net/Uri;

    .line 190
    iput p15, p0, Landroid/telecom/ParcelableConference;->mAddressPresentation:I

    .line 191
    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayName:Ljava/lang/String;

    .line 192
    move/from16 p1, p17

    iput p1, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayNamePresentation:I

    .line 193
    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 194
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    .line 195
    move/from16 p1, p20

    iput p1, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    .line 196
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZILandroid/telecom/ParcelableConference-IA;)V
    .registers 22

    invoke-direct/range {p0 .. p20}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallDirection()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    return v0
.end method

.method public blacklist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallerDisplayNamePresentation()I
    .registers 2

    .line 295
    iget v0, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public greylist-max-o getConnectElapsedTimeMillis()J
    .registers 3

    .line 251
    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getConnectTimeMillis()J
    .registers 3

    .line 247
    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getConnectionCapabilities()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    return v0
.end method

.method public greylist-max-o getConnectionIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getConnectionProperties()I
    .registers 2

    .line 239
    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    return v0
.end method

.method public final blacklist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public greylist-max-o getExtras()Landroid/os/Bundle;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getHandle()Landroid/net/Uri;
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getHandlePresentation()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/telecom/ParcelableConference;->mAddressPresentation:I

    return v0
.end method

.method public greylist-max-o getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public greylist-max-o getState()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    return v0
.end method

.method public greylist-max-o getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public greylist-max-o getVideoState()I
    .registers 2

    .line 259
    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    return v0
.end method

.method public blacklist isRingbackRequested()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 203
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    .line 204
    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 205
    const-string v1, ", capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    .line 206
    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 207
    const-string v1, ", properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    .line 208
    invoke-static {v1}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 209
    const-string v1, ", connectTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 211
    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 213
    const-string v1, ", VideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 215
    const-string v1, ", VideoProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 217
    const-string v1, ", isRingbackRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 219
    const-string v1, ", disconnectCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 221
    const-string v1, ", callDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 346
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 347
    iget p2, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget p2, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 350
    iget-wide v1, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 351
    nop

    .line 352
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz p2, :cond_26

    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {p2}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    .line 351
    :goto_27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 353
    iget p2, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 355
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 356
    iget p2, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-wide v1, p0, Landroid/telecom/ParcelableConference;->mConnectElapsedTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 358
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 359
    iget p2, p0, Landroid/telecom/ParcelableConference;->mAddressPresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget p2, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object p2, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 363
    iget-boolean p2, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget p2, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    return-void
.end method
