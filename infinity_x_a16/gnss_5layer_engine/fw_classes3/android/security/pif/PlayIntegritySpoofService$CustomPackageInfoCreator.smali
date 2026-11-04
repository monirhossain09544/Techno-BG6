.class Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;
.super Ljava/lang/Object;
.source "PlayIntegritySpoofService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/pif/PlayIntegritySpoofService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomPackageInfoCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist originalCreator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist spoofedSignature:Landroid/content/pm/Signature;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcelable$Creator;Landroid/content/pm/Signature;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->originalCreator:Landroid/os/Parcelable$Creator;

    .line 696
    iput-object p2, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->spoofedSignature:Landroid/content/pm/Signature;

    .line 697
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 702
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 703
    const-string v0, "android"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 704
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_22

    .line 705
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->spoofedSignature:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    .line 707
    :cond_22
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_35

    .line 708
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_35

    array-length v2, v0

    if-lez v2, :cond_35

    .line 710
    iget-object v2, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->spoofedSignature:Landroid/content/pm/Signature;

    aput-object v2, v0, v1

    .line 714
    :cond_35
    return-object p1
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

    .line 690
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/PackageInfo;
    .registers 3

    .line 719
    iget-object v0, p0, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/PackageInfo;

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

    .line 690
    invoke-virtual {p0, p1}, Landroid/security/pif/PlayIntegritySpoofService$CustomPackageInfoCreator;->newArray(I)[Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
