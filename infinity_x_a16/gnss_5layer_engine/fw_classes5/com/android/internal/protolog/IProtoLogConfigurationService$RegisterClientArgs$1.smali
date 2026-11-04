.class Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs$1;
.super Ljava/lang/Object;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .registers 3

    .line 230
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;-><init>()V

    .line 231
    invoke-virtual {v0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->readFromParcel(Landroid/os/Parcel;)V

    .line 232
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

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .registers 2

    .line 236
    new-array p1, p1, [Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

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

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs$1;->newArray(I)[Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    move-result-object p1

    return-object p1
.end method
