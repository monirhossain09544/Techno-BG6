.class Landroid/media/tv/BroadcastInfoRequest$1;
.super Ljava/lang/Object;
.source "BroadcastInfoRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/BroadcastInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/BroadcastInfoRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoRequest;
    .registers 5

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    packed-switch v0, :pswitch_data_54

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast info request type (value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in parcel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :pswitch_26
    invoke-static {p1}, Landroid/media/tv/SignalingDataRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SignalingDataRequest;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_2b
    invoke-static {p1}, Landroid/media/tv/TimelineRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_30
    invoke-static {p1}, Landroid/media/tv/CommandRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandRequest;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_35
    invoke-static {p1}, Landroid/media/tv/DsmccRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccRequest;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_3a
    invoke-static {p1}, Landroid/media/tv/StreamEventRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_3f
    invoke-static {p1}, Landroid/media/tv/PesRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesRequest;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_44
    invoke-static {p1}, Landroid/media/tv/SectionRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_49
    invoke-static {p1}, Landroid/media/tv/TableRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_4e
    invoke-static {p1}, Landroid/media/tv/TsRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TsRequest;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/BroadcastInfoRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/BroadcastInfoRequest;
    .registers 2

    .line 99
    new-array p1, p1, [Landroid/media/tv/BroadcastInfoRequest;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Landroid/media/tv/BroadcastInfoRequest$1;->newArray(I)[Landroid/media/tv/BroadcastInfoRequest;

    move-result-object p1

    return-object p1
.end method
