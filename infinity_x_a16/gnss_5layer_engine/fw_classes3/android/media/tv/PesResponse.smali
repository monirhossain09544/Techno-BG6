.class public final Landroid/media/tv/PesResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "PesResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/PesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x4


# instance fields
.field private final blacklist mSharedFilterToken:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/media/tv/PesResponse$1;

    invoke-direct {v0}, Landroid/media/tv/PesResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/PesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;)V
    .registers 6

    .line 53
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 54
    iput-object p4, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesResponse;
    .registers 2

    .line 48
    new-instance v0, Landroid/media/tv/PesResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/PesResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSharedFilterToken()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget-object p2, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
