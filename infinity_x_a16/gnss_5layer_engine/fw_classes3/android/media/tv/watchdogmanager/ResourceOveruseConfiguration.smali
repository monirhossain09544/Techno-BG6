.class public final Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;
.super Ljava/lang/Object;
.source "ResourceOveruseConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;,
        Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$ApplicationCategoryType;,
        Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$ComponentType;
    }
.end annotation


# static fields
.field public static final blacklist APPLICATION_CATEGORY_TYPE_MAPS:Ljava/lang/String; = "android.car.watchdog.app.category.MAPS"

.field public static final blacklist APPLICATION_CATEGORY_TYPE_MEDIA:Ljava/lang/String; = "android.car.watchdog.app.category.MEDIA"

.field public static final blacklist COMPONENT_TYPE_SYSTEM:I = 0x1

.field public static final blacklist COMPONENT_TYPE_THIRD_PARTY:I = 0x3

.field public static final blacklist COMPONENT_TYPE_VENDOR:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mComponentType:I

.field private blacklist mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

.field private blacklist mPackagesToAppCategoryTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSafeToKillPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVendorPackagePrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 308
    new-instance v0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 140
    iput p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    .line 142
    iget p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_57

    iget p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_57

    iget p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_18

    goto :goto_57

    .line 145
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "componentType was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but must be one of: COMPONENT_TYPE_SYSTEM("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), COMPONENT_TYPE_VENDOR("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), COMPONENT_TYPE_THIRD_PARTY("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_57
    :goto_57
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    .line 161
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 162
    iput-object p3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    .line 163
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 164
    iput-object p4, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    .line 165
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 166
    iput-object p5, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 167
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 269
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 271
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 272
    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 274
    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_32

    .line 275
    move-object p1, v0

    goto :goto_3a

    .line 276
    :cond_32
    sget-object v1, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 277
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 279
    :goto_3a
    iput v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    .line 281
    iget v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8b

    iget v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    const/4 v6, 0x2

    if-eq v1, v6, :cond_8b

    iget v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_4c

    goto :goto_8b

    .line 284
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "componentType was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but must be one of: COMPONENT_TYPE_SYSTEM("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), COMPONENT_TYPE_VENDOR("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), COMPONENT_TYPE_THIRD_PARTY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_8b
    :goto_8b
    iput-object v3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    .line 300
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 301
    iput-object v4, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    .line 302
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 303
    iput-object v5, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    .line 304
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 305
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 306
    return-void
.end method

.method public static blacklist componentTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 115
    packed-switch p0, :pswitch_data_12

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :pswitch_8
    const-string p0, "COMPONENT_TYPE_THIRD_PARTY"

    return-object p0

    .line 119
    :pswitch_b
    const-string p0, "COMPONENT_TYPE_VENDOR"

    return-object p0

    .line 117
    :pswitch_e
    const-string p0, "COMPONENT_TYPE_SYSTEM"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getComponentType()I
    .registers 2

    .line 171
    iget v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    return v0
.end method

.method public blacklist getIoOveruseConfiguration()Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    return-object v0
.end method

.method public blacklist getPackagesToAppCategoryTypes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getSafeToKillPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getVendorPackagePrefixes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceOveruseConfiguration { componentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    .line 229
    invoke-static {v1}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->componentTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", safeToKillPackages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendorPackagePrefixes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packagesToAppCategoryTypes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ioOveruseConfiguration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 247
    nop

    .line 248
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 249
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 250
    iget v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mComponentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mSafeToKillPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 252
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mVendorPackagePrefixes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 253
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 254
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    :cond_2a
    return-void
.end method
