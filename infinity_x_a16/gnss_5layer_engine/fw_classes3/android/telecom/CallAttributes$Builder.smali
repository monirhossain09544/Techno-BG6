.class public final Landroid/telecom/CallAttributes$Builder;
.super Ljava/lang/Object;
.source "CallAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private blacklist mCallCapabilities:I

.field private blacklist mCallType:I

.field private final blacklist mDirection:I

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private blacklist mIsLogExcluded:Z

.field private final blacklist mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;ILjava/lang/CharSequence;Landroid/net/Uri;)V
    .registers 8

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/CallAttributes$Builder;->mCallType:I

    .line 169
    const/4 v1, 0x2

    iput v1, p0, Landroid/telecom/CallAttributes$Builder;->mCallCapabilities:I

    .line 183
    invoke-direct {p0, v0, v1, p2}, Landroid/telecom/CallAttributes$Builder;->isInRange(III)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 188
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iput-object p1, p0, Landroid/telecom/CallAttributes$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 192
    iput p2, p0, Landroid/telecom/CallAttributes$Builder;->mDirection:I

    .line 193
    iput-object p3, p0, Landroid/telecom/CallAttributes$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 194
    iput-object p4, p0, Landroid/telecom/CallAttributes$Builder;->mAddress:Landroid/net/Uri;

    .line 195
    return-void

    .line 184
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 186
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 184
    const-string p3, "CallDirection=[%d] is invalid. CallDirections value should be within [%d, %d]"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist isInRange(III)Z
    .registers 4

    .line 251
    if-lt p3, p1, :cond_6

    if-gt p3, p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method


# virtual methods
.method public whitelist build()Landroid/telecom/CallAttributes;
    .registers 10

    .line 245
    new-instance v0, Landroid/telecom/CallAttributes;

    iget-object v1, p0, Landroid/telecom/CallAttributes$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/CallAttributes$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/telecom/CallAttributes$Builder;->mAddress:Landroid/net/Uri;

    iget v4, p0, Landroid/telecom/CallAttributes$Builder;->mDirection:I

    iget v5, p0, Landroid/telecom/CallAttributes$Builder;->mCallType:I

    iget v6, p0, Landroid/telecom/CallAttributes$Builder;->mCallCapabilities:I

    iget-boolean v7, p0, Landroid/telecom/CallAttributes$Builder;->mIsLogExcluded:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/telecom/CallAttributes;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIIZLandroid/telecom/CallAttributes-IA;)V

    return-object v0
.end method

.method public whitelist setCallCapabilities(I)Landroid/telecom/CallAttributes$Builder;
    .registers 2

    .line 221
    iput p1, p0, Landroid/telecom/CallAttributes$Builder;->mCallCapabilities:I

    .line 222
    return-object p0
.end method

.method public whitelist setCallType(I)Landroid/telecom/CallAttributes$Builder;
    .registers 5

    .line 204
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/telecom/CallAttributes$Builder;->isInRange(III)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 209
    iput p1, p0, Landroid/telecom/CallAttributes$Builder;->mCallType:I

    .line 210
    return-object p0

    .line 205
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 205
    const-string v0, "CallType=[%d] is invalid. CallTypes value should be within [%d, %d]"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setLogExcluded(Z)Landroid/telecom/CallAttributes$Builder;
    .registers 2

    .line 233
    iput-boolean p1, p0, Landroid/telecom/CallAttributes$Builder;->mIsLogExcluded:Z

    .line 234
    return-object p0
.end method
