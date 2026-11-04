.class public final Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;
.super Ljava/lang/Object;
.source "EnableSecureLockDeviceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMessage:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams$1;

    invoke-direct {v0}, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams$1;-><init>()V

    sput-object v0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->mMessage:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->mMessage:Ljava/lang/CharSequence;

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 91
    iget-object p2, p0, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
