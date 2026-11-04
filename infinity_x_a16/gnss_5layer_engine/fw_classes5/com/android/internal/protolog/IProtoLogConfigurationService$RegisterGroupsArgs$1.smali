.class Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs$1;
.super Ljava/lang/Object;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;
    .registers 3

    .line 283
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;-><init>()V

    .line 284
    invoke-virtual {v0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->readFromParcel(Landroid/os/Parcel;)V

    .line 285
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

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;
    .registers 2

    .line 289
    new-array p1, p1, [Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;

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

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs$1;->newArray(I)[Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;

    move-result-object p1

    return-object p1
.end method
