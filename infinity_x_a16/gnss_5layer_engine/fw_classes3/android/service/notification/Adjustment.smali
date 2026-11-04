.class public final Landroid/service/notification/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Adjustment$Types;,
        Landroid/service/notification/Adjustment$Keys;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEY_CONTEXTUAL_ACTIONS:Ljava/lang/String; = "key_contextual_actions"

.field public static final greylist-max-o KEY_GROUP_KEY:Ljava/lang/String; = "key_group_key"

.field public static final whitelist KEY_IMPORTANCE:Ljava/lang/String; = "key_importance"

.field public static final whitelist KEY_IMPORTANCE_PROPOSAL:Ljava/lang/String; = "key_importance_proposal"

.field public static final whitelist KEY_NOT_CONVERSATION:Ljava/lang/String; = "key_not_conversation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_PEOPLE:Ljava/lang/String; = "key_people"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_RANKING_SCORE:Ljava/lang/String; = "key_ranking_score"

.field public static final whitelist KEY_SENSITIVE_CONTENT:Ljava/lang/String; = "key_sensitive_content"

.field public static final whitelist KEY_SNOOZE_CRITERIA:Ljava/lang/String; = "key_snooze_criteria"

.field public static final whitelist KEY_SUMMARIZATION:Ljava/lang/String; = "key_summarization"

.field public static final whitelist KEY_TEXT_REPLIES:Ljava/lang/String; = "key_text_replies"

.field public static final whitelist KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final blacklist KEY_UNCLASSIFY:Ljava/lang/String; = "key_unclassify"

.field public static final whitelist KEY_USER_SENTIMENT:Ljava/lang/String; = "key_user_sentiment"

.field public static final whitelist TYPE_CONTENT_RECOMMENDATION:I = 0x4

.field public static final whitelist TYPE_NEWS:I = 0x3

.field public static final whitelist TYPE_OTHER:I = 0x0

.field public static final whitelist TYPE_PROMOTION:I = 0x1

.field public static final whitelist TYPE_SOCIAL_MEDIA:I = 0x2


# instance fields
.field private final greylist-max-o mExplanation:Ljava/lang/CharSequence;

.field private blacklist mIssuer:Ljava/lang/String;

.field private final greylist-max-o mKey:Ljava/lang/String;

.field private final greylist-max-o mPackage:Ljava/lang/String;

.field private final greylist-max-o mSignals:Landroid/os/Bundle;

.field private final greylist-max-o mUser:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 317
    new-instance v0, Landroid/service/notification/Adjustment$1;

    invoke-direct {v0}, Landroid/service/notification/Adjustment$1;-><init>()V

    sput-object v0, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    goto :goto_14

    .line 300
    :cond_12
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 302
    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    goto :goto_23

    .line 305
    :cond_21
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 307
    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_30

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_32

    .line 310
    :cond_30
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 312
    :goto_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/notification/Adjustment;)V
    .registers 8

    .line 287
    iget-object v1, p1, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    iget-object v0, p1, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    if-eqz v0, :cond_f

    iget-object v0, p1, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_14

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_14
    move-object v3, v0

    iget-object v4, p1, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    iget v5, p1, Landroid/service/notification/Adjustment;->mUser:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 289
    iget-object p1, p1, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    iput-object p1, v0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 257
    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 258
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 259
    iput p5, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 260
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V
    .registers 6

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 276
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 277
    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 278
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 279
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 280
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getIssuer()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 334
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSignals()Landroid/os/Bundle;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getUser()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 348
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    return v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 352
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIssuer(Ljava/lang/String;)V
    .registers 2

    .line 395
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjustment{mSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 362
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    .line 366
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    :goto_12
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    if-eqz p2, :cond_1f

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_22

    .line 372
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    :goto_22
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2f

    .line 375
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 378
    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    :goto_32
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 381
    iget p2, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object p2, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    return-void
.end method
