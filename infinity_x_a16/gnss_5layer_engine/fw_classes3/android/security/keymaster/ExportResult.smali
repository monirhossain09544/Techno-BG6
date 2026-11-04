.class public Landroid/security/keymaster/ExportResult;
.super Ljava/lang/Object;
.source "ExportResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/ExportResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o exportData:[B

.field public final greylist-max-o resultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/security/keymaster/ExportResult$1;

    invoke-direct {v0}, Landroid/security/keymaster/ExportResult$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    .line 34
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 35
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 61
    iget p2, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object p2, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 63
    return-void
.end method
