.class public Landroid/security/authorization/AuthorizationTokens;
.super Ljava/lang/Object;
.source "AuthorizationTokens.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/authorization/AuthorizationTokens;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist authToken:Landroid/hardware/security/keymint/HardwareAuthToken;

.field public blacklist timestampToken:Landroid/hardware/security/secureclock/TimeStampToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/security/authorization/AuthorizationTokens$1;

    invoke-direct {v0}, Landroid/security/authorization/AuthorizationTokens$1;-><init>()V

    sput-object v0, Landroid/security/authorization/AuthorizationTokens;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 68
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 69
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 70
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 72
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 62
    nop

    .line 63
    iget-object v0, p0, Landroid/security/authorization/AuthorizationTokens;->authToken:Landroid/hardware/security/keymint/HardwareAuthToken;

    invoke-direct {p0, v0}, Landroid/security/authorization/AuthorizationTokens;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 64
    iget-object v1, p0, Landroid/security/authorization/AuthorizationTokens;->timestampToken:Landroid/hardware/security/secureclock/TimeStampToken;

    invoke-direct {p0, v1}, Landroid/security/authorization/AuthorizationTokens;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5f

    .line 49
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 54
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 57
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 55
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/keymint/HardwareAuthToken;

    iput-object v2, p0, Landroid/security/authorization/AuthorizationTokens;->authToken:Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_5d

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 54
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 57
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 55
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_44
    :try_start_44
    sget-object v2, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/secureclock/TimeStampToken;

    iput-object v2, p0, Landroid/security/authorization/AuthorizationTokens;->timestampToken:Landroid/hardware/security/secureclock/TimeStampToken;
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_5d

    .line 54
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_57

    .line 57
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    nop

    .line 59
    return-void

    .line 55
    :cond_57
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :catchall_5d
    move-exception v2

    goto :goto_67

    .line 48
    :cond_5f
    :try_start_5f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5d

    .line 54
    :goto_67
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_70

    .line 55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Landroid/security/authorization/AuthorizationTokens;->authToken:Landroid/hardware/security/keymint/HardwareAuthToken;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object v1, p0, Landroid/security/authorization/AuthorizationTokens;->timestampToken:Landroid/hardware/security/secureclock/TimeStampToken;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void
.end method
