.class Landroid/service/chooser/ChooserSessionToken$1;
.super Ljava/lang/Object;
.source "ChooserSessionToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserSessionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/chooser/ChooserSessionToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/chooser/ChooserSessionToken;
    .registers 3

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/service/chooser/ChooserSession;->isSessionBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/service/chooser/ChooserSessionToken;

    invoke-direct {v0, p1}, Landroid/service/chooser/ChooserSessionToken;-><init>(Landroid/os/IBinder;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
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

    .line 66
    invoke-virtual {p0, p1}, Landroid/service/chooser/ChooserSessionToken$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/chooser/ChooserSessionToken;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/chooser/ChooserSessionToken;
    .registers 2

    .line 75
    new-array p1, p1, [Landroid/service/chooser/ChooserSessionToken;

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

    .line 66
    invoke-virtual {p0, p1}, Landroid/service/chooser/ChooserSessionToken$1;->newArray(I)[Landroid/service/chooser/ChooserSessionToken;

    move-result-object p1

    return-object p1
.end method
