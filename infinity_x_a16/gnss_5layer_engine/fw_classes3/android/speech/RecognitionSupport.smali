.class public final Landroid/speech/RecognitionSupport;
.super Ljava/lang/Object;
.source "RecognitionSupport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionSupport$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/RecognitionSupport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInstalledOnDeviceLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnlineLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingOnDeviceLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedOnDeviceLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 234
    new-instance v0, Landroid/speech/RecognitionSupport$1;

    invoke-direct {v0}, Landroid/speech/RecognitionSupport$1;-><init>()V

    sput-object v0, Landroid/speech/RecognitionSupport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    nop

    .line 42
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    .line 45
    nop

    .line 47
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    .line 53
    nop

    .line 55
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    .line 62
    nop

    .line 64
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 217
    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    .line 218
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 220
    iput-object v1, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    .line 221
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    iput-object v2, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    .line 224
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 226
    iput-object v3, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    .line 227
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    nop

    .line 42
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    .line 45
    nop

    .line 47
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    .line 53
    nop

    .line 55
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    .line 62
    nop

    .line 64
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    .line 87
    iput-object p1, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    .line 88
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 90
    iput-object p2, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    .line 91
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 93
    iput-object p3, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    .line 94
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 96
    iput-object p4, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    .line 97
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 160
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 162
    :cond_12
    check-cast p1, Landroid/speech/RecognitionSupport;

    .line 164
    iget-object v2, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    iget-object v3, p1, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    .line 165
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    iget-object v3, p1, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    .line 166
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    iget-object v3, p1, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    .line 167
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    iget-object p1, p1, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    .line 168
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 164
    :goto_3e
    return v0

    .line 160
    :cond_3f
    :goto_3f
    return v1
.end method

.method public whitelist getInstalledOnDeviceLanguages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getOnlineLanguages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPendingOnDeviceLanguages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSupportedOnDeviceLanguages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 177
    nop

    .line 178
    iget-object v0, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 179
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionSupport { installedOnDeviceLanguages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pendingOnDeviceLanguages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedOnDeviceLanguages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onlineLanguages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 191
    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mInstalledOnDeviceLanguages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 192
    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mPendingOnDeviceLanguages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 193
    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mSupportedOnDeviceLanguages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 194
    iget-object p2, p0, Landroid/speech/RecognitionSupport;->mOnlineLanguages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 195
    return-void
.end method
