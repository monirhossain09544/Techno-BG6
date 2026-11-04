.class public Lcom/android/internal/content/ReferrerIntent;
.super Landroid/content/Intent;
.source "ReferrerIntent.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mCallerToken:Landroid/os/IBinder;

.field public final greylist mReferrer:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/android/internal/content/ReferrerIntent$1;

    invoke-direct {v0}, Lcom/android/internal/content/ReferrerIntent$1;-><init>()V

    sput-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    .line 41
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 42
    iput-object p2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    .line 44
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/content/ReferrerIntent;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 69
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    instance-of v1, p1, Lcom/android/internal/content/ReferrerIntent;

    if-nez v1, :cond_8

    goto :goto_28

    .line 72
    :cond_8
    check-cast p1, Lcom/android/internal/content/ReferrerIntent;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/content/ReferrerIntent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    .line 74
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 73
    :goto_27
    return v0

    .line 70
    :cond_28
    :goto_28
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 79
    nop

    .line 80
    const/16 v0, 0x20f

    invoke-virtual {p0}, Lcom/android/internal/content/ReferrerIntent;->filterHashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 47
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object p2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 50
    return-void
.end method
