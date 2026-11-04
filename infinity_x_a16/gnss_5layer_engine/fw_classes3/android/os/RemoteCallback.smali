.class public final Landroid/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallback$OnResultListener;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCallback:Landroid/os/IRemoteCallback;

.field private final greylist-max-p mHandler:Landroid/os/Handler;

.field private final greylist-max-o mListener:Landroid/os/RemoteCallback$OnResultListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;
    .registers 1

    iget-object p0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/os/RemoteCallback$3;

    invoke-direct {v0}, Landroid/os/RemoteCallback$3;-><init>()V

    sput-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    .line 60
    iput-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 61
    nop

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/RemoteCallback$OnResultListener;)V
    .registers 3

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_11

    .line 48
    iput-object p1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    .line 49
    iput-object p2, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance p1, Landroid/os/RemoteCallback$1;

    invoke-direct {p1, p0}, Landroid/os/RemoteCallback$1;-><init>(Landroid/os/RemoteCallback;)V

    iput-object p1, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 56
    return-void

    .line 46
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInterface()Landroid/os/IRemoteCallback;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public whitelist sendResult(Landroid/os/Bundle;)V
    .registers 4

    .line 67
    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    if-eqz v0, :cond_19

    .line 68
    iget-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/RemoteCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/os/RemoteCallback$2;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    .line 76
    :cond_13
    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    invoke-interface {v0, p1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    goto :goto_20

    .line 81
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 84
    goto :goto_20

    .line 82
    :catch_1f
    move-exception p1

    .line 86
    :goto_20
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 100
    iget-object p2, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    return-void
.end method
