.class public final Landroid/service/autofill/ConvertCredentialResponse;
.super Ljava/lang/Object;
.source "ConvertCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/ConvertCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientState:Landroid/os/Bundle;

.field private final blacklist mDataset:Landroid/service/autofill/Dataset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/service/autofill/ConvertCredentialResponse$1;

    invoke-direct {v0}, Landroid/service/autofill/ConvertCredentialResponse$1;-><init>()V

    sput-object v0, Landroid/service/autofill/ConvertCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 120
    sget-object v1, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 121
    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_16

    move-object p1, v2

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 123
    :goto_1a
    iput-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    .line 124
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 126
    iput-object p1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    .line 66
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 68
    iput-object p2, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClientState()Landroid/os/Bundle;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getDataset()Landroid/service/autofill/Dataset;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertCredentialResponse { dataset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 101
    nop

    .line 102
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 103
    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    iget-object p2, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 106
    :cond_1a
    return-void
.end method
