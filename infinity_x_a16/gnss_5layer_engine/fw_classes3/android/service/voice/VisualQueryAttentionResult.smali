.class public final Landroid/service/voice/VisualQueryAttentionResult;
.super Ljava/lang/Object;
.source "VisualQueryAttentionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryAttentionResult$Builder;,
        Landroid/service/voice/VisualQueryAttentionResult$InteractionIntention;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisualQueryAttentionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INTERACTION_INTENTION_AUDIO_VISUAL:I = 0x0

.field public static final whitelist INTERACTION_INTENTION_VISUAL_ACCESSIBILITY:I = 0x1


# instance fields
.field private final blacklist mEngagementLevel:I

.field private final blacklist mInteractionIntention:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultEngagementLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->defaultEngagementLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInteractionIntention()I
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->defaultInteractionIntention()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 282
    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult$1;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryAttentionResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisualQueryAttentionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 12

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    .line 151
    iget p1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-eqz p1, :cond_45

    iget p1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    goto :goto_45

    .line 153
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interactionIntention was "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " but must be one of: INTERACTION_INTENTION_AUDIO_VISUAL("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "), INTERACTION_INTENTION_VISUAL_ACCESSIBILITY("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_45
    :goto_45
    iput p2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    .line 160
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0x64

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 166
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 263
    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    .line 264
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-eqz v0, :cond_4d

    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    goto :goto_4d

    .line 266
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interactionIntention was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but must be one of: INTERACTION_INTENTION_AUDIO_VISUAL("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), INTERACTION_INTENTION_VISUAL_ACCESSIBILITY("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_4d
    :goto_4d
    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    .line 272
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0x64

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 278
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    return-void
.end method

.method private static blacklist defaultEngagementLevel()I
    .registers 1

    .line 84
    const/16 v0, 0x64

    return v0
.end method

.method private static blacklist defaultInteractionIntention()I
    .registers 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist interactionIntentionToString(I)Ljava/lang/String;
    .registers 1

    .line 136
    packed-switch p0, :pswitch_data_e

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :pswitch_8
    const-string p0, "INTERACTION_INTENTION_VISUAL_ACCESSIBILITY"

    return-object p0

    .line 138
    :pswitch_b
    const-string p0, "INTERACTION_INTENTION_AUDIO_VISUAL"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .registers 3

    .line 93
    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;-><init>()V

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->setInteractionIntention(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->setEngagementLevel(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 215
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 216
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 218
    :cond_12
    check-cast p1, Landroid/service/voice/VisualQueryAttentionResult;

    .line 220
    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    iget v3, p1, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    iget p1, p1, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    .line 216
    :cond_23
    :goto_23
    return v1
.end method

.method public whitelist getEngagementLevel()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    return v0
.end method

.method public whitelist getInteractionIntention()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 231
    nop

    .line 232
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 233
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    add-int/2addr v0, v1

    .line 234
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualQueryAttentionResult { interactionIntention = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engagementLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 244
    iget p2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget p2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return-void
.end method
