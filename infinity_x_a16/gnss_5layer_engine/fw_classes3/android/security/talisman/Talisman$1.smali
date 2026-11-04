.class Landroid/security/talisman/Talisman$1;
.super Ljava/lang/Object;
.source "Talisman.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/talisman/Talisman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/talisman/Talisman;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/security/talisman/Talisman;
    .registers 4

    .line 73
    new-instance v0, Landroid/security/talisman/Talisman;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/security/talisman/Talisman;-><init>(Landroid/os/Parcel;Landroid/security/talisman/Talisman-IA;)V

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

    .line 70
    invoke-virtual {p0, p1}, Landroid/security/talisman/Talisman$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/talisman/Talisman;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/security/talisman/Talisman;
    .registers 2

    .line 78
    new-array p1, p1, [Landroid/security/talisman/Talisman;

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

    .line 70
    invoke-virtual {p0, p1}, Landroid/security/talisman/Talisman$1;->newArray(I)[Landroid/security/talisman/Talisman;

    move-result-object p1

    return-object p1
.end method
