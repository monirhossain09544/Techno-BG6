.class public final Landroid/service/chooser/ChooserSessionToken;
.super Ljava/lang/Object;
.source "ChooserSessionToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/chooser/ChooserSessionToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/service/chooser/ChooserSessionToken$1;

    invoke-direct {v0}, Landroid/service/chooser/ChooserSessionToken$1;-><init>()V

    sput-object v0, Landroid/service/chooser/ChooserSessionToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/service/chooser/ChooserSession;->isSessionBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    iput-object p1, p0, Landroid/service/chooser/ChooserSessionToken;->mBinder:Landroid/os/IBinder;

    .line 43
    return-void

    .line 40
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected binder type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 57
    instance-of v0, p1, Landroid/service/chooser/ChooserSessionToken;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/service/chooser/ChooserSessionToken;

    iget-object v0, p0, Landroid/service/chooser/ChooserSessionToken;->mBinder:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/service/chooser/ChooserSessionToken;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/service/chooser/ChooserSessionToken;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 52
    iget-object p2, p0, Landroid/service/chooser/ChooserSessionToken;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 53
    return-void
.end method
