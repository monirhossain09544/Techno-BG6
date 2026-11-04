.class public final Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
.super Ljava/lang/Object;
.source "ResourceOveruseStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 137
    new-instance v0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 126
    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1c

    .line 127
    move-object p1, v0

    goto :goto_24

    .line 128
    :cond_1c
    sget-object v1, Landroid/media/tv/watchdogmanager/IoOveruseStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 130
    :goto_24
    iput-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    .line 131
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 132
    iput-object v3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    .line 133
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 134
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 135
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/tv/watchdogmanager/IoOveruseStats;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 58
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    .line 59
    const-class p1, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 60
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    .line 61
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 62
    iput-object p3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIoOveruseStats()Landroid/media/tv/watchdogmanager/IoOveruseStats;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceOveruseStats { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ioOveruseStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

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
    .registers 4

    .line 106
    nop

    .line 107
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 108
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    :cond_1f
    return-void
.end method
