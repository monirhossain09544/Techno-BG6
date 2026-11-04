.class public final Landroid/media/tv/SignalingDataResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "SignalingDataResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SignalingDataResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x9


# instance fields
.field private final blacklist mSignalingDataInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/SignalingDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSignalingDataTypes:Ljava/util/List;
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

    .line 37
    new-instance v0, Landroid/media/tv/SignalingDataResponse$1;

    invoke-direct {v0}, Landroid/media/tv/SignalingDataResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/SignalingDataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/tv/SignalingDataInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 65
    iput-object p4, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataTypes:Ljava/util/List;

    .line 66
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataTypes:Ljava/util/List;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 68
    iput-object p5, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataInfoList:Ljava/util/List;

    .line 69
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataInfoList:Ljava/util/List;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 110
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const-class v2, Landroid/media/tv/SignalingDataInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 117
    iput-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataTypes:Ljava/util/List;

    .line 118
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataTypes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 120
    iput-object v1, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataInfoList:Ljava/util/List;

    .line 121
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataInfoList:Ljava/util/List;

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SignalingDataResponse;
    .registers 2

    .line 55
    new-instance v0, Landroid/media/tv/SignalingDataResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/SignalingDataResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSignalingDataInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/SignalingDataInfo;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataInfoList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSignalingDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataTypes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 99
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    iget-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Landroid/media/tv/SignalingDataResponse;->mSignalingDataInfoList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 102
    return-void
.end method
