.class public final Landroid/service/voice/HotwordRejectedResult;
.super Ljava/lang/Object;
.source "HotwordRejectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;,
        Landroid/service/voice/HotwordRejectedResult$Builder;,
        Landroid/service/voice/HotwordRejectedResult$ConfidenceLevel;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_NONE:I = 0x0

.field public static final whitelist CONFIDENCE_LEVEL_VERY_HIGH:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordRejectedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordRejectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    new-instance v0, Landroid/service/voice/HotwordRejectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordRejectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    .line 130
    const-class p1, Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;

    const/4 v0, 0x0

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 134
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 204
    iput p1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    .line 205
    const-class p1, Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;

    const/4 v0, 0x0

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 209
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    return-void
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .registers 1

    .line 111
    packed-switch p0, :pswitch_data_18

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :pswitch_8
    const-string p0, "CONFIDENCE_LEVEL_VERY_HIGH"

    return-object p0

    .line 119
    :pswitch_b
    const-string p0, "CONFIDENCE_LEVEL_HIGH"

    return-object p0

    .line 117
    :pswitch_e
    const-string p0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object p0

    .line 115
    :pswitch_11
    const-string p0, "CONFIDENCE_LEVEL_LOW"

    return-object p0

    .line 113
    :pswitch_14
    const-string p0, "CONFIDENCE_LEVEL_NONE"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist defaultConfidenceLevel()I
    .registers 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 162
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 163
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 165
    :cond_12
    check-cast p1, Landroid/service/voice/HotwordRejectedResult;

    .line 167
    iget v2, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    iget p1, p1, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    .line 163
    :cond_1d
    :goto_1d
    return v1
.end method

.method public whitelist getConfidenceLevel()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 177
    nop

    .line 178
    const/16 v0, 0x1f

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    add-int/2addr v0, v1

    .line 179
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordRejectedResult { confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

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

    .line 188
    iget p2, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
