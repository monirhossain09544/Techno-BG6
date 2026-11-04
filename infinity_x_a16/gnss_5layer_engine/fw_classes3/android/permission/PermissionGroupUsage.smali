.class public final Landroid/permission/PermissionGroupUsage;
.super Ljava/lang/Object;
.source "PermissionGroupUsage.java"

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
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActive:Z

.field private final blacklist mAttributionLabel:Ljava/lang/CharSequence;

.field private final blacklist mAttributionTag:Ljava/lang/CharSequence;

.field private final blacklist mLastAccessTimeMillis:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPermissionGroupName:Ljava/lang/String;

.field private final blacklist mPersistentDeviceId:Ljava/lang/String;

.field private final blacklist mPhoneCall:Z

.field private final blacklist mProxyLabel:Ljava/lang/CharSequence;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 317
    new-instance v0, Landroid/permission/PermissionGroupUsage$1;

    invoke-direct {v0}, Landroid/permission/PermissionGroupUsage$1;-><init>()V

    sput-object v0, Landroid/permission/PermissionGroupUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 14

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    .line 286
    :goto_10
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    .line 287
    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 291
    and-int/lit8 v8, v0, 0x40

    const/4 v9, 0x0

    if-nez v8, :cond_2d

    move-object v8, v9

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    .line 292
    :goto_31
    and-int/lit16 v10, v0, 0x80

    if-nez v10, :cond_37

    move-object v10, v9

    goto :goto_3b

    :cond_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v10

    .line 293
    :goto_3b
    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_41

    move-object v0, v9

    goto :goto_45

    :cond_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 294
    :goto_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 296
    iput-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 297
    const-class v3, Landroid/annotation/NonNull;

    iget-object v11, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v9, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 299
    iput v4, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    .line 300
    iput-wide v5, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    .line 301
    iput-object v7, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 302
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v3, v9, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 304
    iput-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    .line 305
    iput-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    .line 306
    iput-object v8, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 307
    iput-object v10, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 308
    iput-object v0, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 309
    iput-object p1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    .line 310
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {p1, v9, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 14

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 87
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 89
    iput p2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    .line 90
    iput-wide p3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    .line 91
    iput-object p5, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 92
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 94
    iput-boolean p6, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    .line 95
    iput-boolean p7, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    .line 96
    iput-object p8, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 97
    iput-object p9, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 98
    iput-object p10, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 99
    iput-object p11, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    .line 100
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 212
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 213
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6d

    .line 215
    :cond_12
    check-cast p1, Landroid/permission/PermissionGroupUsage;

    .line 217
    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 218
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    iget v3, p1, Landroid/permission/PermissionGroupUsage;->mUid:I

    if-ne v2, v3, :cond_6b

    iget-wide v2, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    iget-wide v4, p1, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6b

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    iget-object v3, p1, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 221
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    iget-boolean v3, p1, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-ne v2, v3, :cond_6b

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    iget-boolean v3, p1, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-ne v2, v3, :cond_6b

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 224
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 225
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 226
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    iget-object p1, p1, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    .line 227
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v0, v1

    .line 217
    :goto_6c
    return v0

    .line 213
    :cond_6d
    :goto_6d
    return v1
.end method

.method public whitelist getAttributionLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/CharSequence;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLastAccessTimeMillis()J
    .registers 3

    .line 128
    iget-wide v0, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissionGroupName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 236
    nop

    .line 237
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 238
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    add-int/2addr v0, v2

    .line 239
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 240
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 241
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 243
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 244
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    return v0
.end method

.method public whitelist isPhoneCall()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroupUsage { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAccessTimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissionGroupName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistentDeviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 256
    nop

    .line 257
    iget-boolean p2, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-eqz p2, :cond_8

    const/16 p2, 0x10

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 258
    :goto_9
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-eqz v0, :cond_f

    or-int/lit8 p2, p2, 0x20

    .line 259
    :cond_f
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    or-int/lit8 p2, p2, 0x40

    .line 260
    :cond_15
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    or-int/lit16 p2, p2, 0x80

    .line 261
    :cond_1b
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_21

    or-int/lit16 p2, p2, 0x100

    .line 262
    :cond_21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget p2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-wide v0, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz p2, :cond_41

    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 268
    :cond_41
    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4a

    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 269
    :cond_4a
    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz p2, :cond_53

    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 270
    :cond_53
    iget-object p2, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return-void
.end method
