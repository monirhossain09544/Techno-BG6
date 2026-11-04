.class public final Landroid/media/tv/watchdogmanager/PackageKillableState;
.super Ljava/lang/Object;
.source "PackageKillableState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/PackageKillableState$KillableState;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/PackageKillableState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KILLABLE_STATE_NEVER:I = 0x3

.field public static final blacklist KILLABLE_STATE_NO:I = 0x2

.field public static final blacklist KILLABLE_STATE_YES:I = 0x1


# instance fields
.field private blacklist mKillableState:I

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Landroid/media/tv/watchdogmanager/PackageKillableState$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/PackageKillableState$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/PackageKillableState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    iput-object v0, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    .line 157
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 158
    iput v1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    .line 159
    const-class v0, Landroid/annotation/UserIdInt;

    iget v1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    .line 160
    iput p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    .line 162
    iget p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_73

    iget p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_73

    iget p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_34

    goto :goto_73

    .line 165
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killableState was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: KILLABLE_STATE_YES("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), KILLABLE_STATE_NO("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), KILLABLE_STATE_NEVER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_73
    :goto_73
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    .line 84
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 85
    iput p2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    .line 86
    const-class p1, Landroid/annotation/UserIdInt;

    iget p2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    .line 87
    iput p3, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    .line 89
    iget p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_67

    iget p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_67

    iget p1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_28

    goto :goto_67

    .line 92
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killableState was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but must be one of: KILLABLE_STATE_YES("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "), KILLABLE_STATE_NO("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), KILLABLE_STATE_NEVER("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_67
    :goto_67
    return-void
.end method

.method public static blacklist killableStateToString(I)Ljava/lang/String;
    .registers 1

    .line 61
    packed-switch p0, :pswitch_data_12

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_8
    const-string p0, "KILLABLE_STATE_NEVER"

    return-object p0

    .line 65
    :pswitch_b
    const-string p0, "KILLABLE_STATE_NO"

    return-object p0

    .line 63
    :pswitch_e
    const-string p0, "KILLABLE_STATE_YES"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKillableState()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageKillableState { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", killableState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    .line 133
    invoke-static {v1}, Landroid/media/tv/watchdogmanager/PackageKillableState;->killableStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 139
    iget-object p2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget p2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Landroid/media/tv/watchdogmanager/PackageKillableState;->mKillableState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
