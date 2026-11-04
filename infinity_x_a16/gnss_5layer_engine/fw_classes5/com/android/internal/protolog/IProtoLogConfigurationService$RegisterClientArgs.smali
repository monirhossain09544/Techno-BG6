.class public Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
.super Ljava/lang/Object;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogConfigurationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterClientArgs"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist groups:[Ljava/lang/String;

.field public blacklist groupsDefaultLogcatStatus:[Z

.field public blacklist viewerConfigFile:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 227
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs$1;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs$1;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 272
    nop

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_72

    .line 257
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 264
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 267
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 257
    return-void

    .line 265
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 264
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 267
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 259
    return-void

    .line 265
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 264
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 267
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 261
    return-void

    .line 265
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_70

    .line 264
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6a

    .line 267
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 268
    nop

    .line 269
    return-void

    .line 265
    :cond_6a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :catchall_70
    move-exception v2

    goto :goto_7a

    .line 256
    :cond_72
    :try_start_72
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_70

    .line 264
    :goto_7a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_83

    .line 265
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_83
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 268
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 247
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 248
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 250
    return-void
.end method
