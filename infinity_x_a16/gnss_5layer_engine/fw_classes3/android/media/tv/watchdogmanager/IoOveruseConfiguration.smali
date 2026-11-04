.class public final Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;
.super Ljava/lang/Object;
.source "IoOveruseConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppCategorySpecificThresholds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

.field private blacklist mPackageSpecificThresholds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemWideThresholds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 195
    new-instance v0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$1;

    invoke-direct {v0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/tv/watchdogmanager/PerStateBytes;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 84
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 85
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    .line 86
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 87
    iput-object p3, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    .line 88
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 89
    iput-object p4, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

    .line 90
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Landroid/media/tv/watchdogmanager/PerStateBytes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 178
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 179
    const-class v2, Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    const-class v3, Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const-class v4, Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 185
    iput-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 186
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    const/4 v4, 0x0

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 187
    iput-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    .line 188
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 189
    iput-object v2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    .line 190
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    iput-object v3, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

    .line 192
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

    invoke-static {p1, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppCategorySpecificThresholds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getComponentLevelThresholds()Landroid/media/tv/watchdogmanager/PerStateBytes;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    return-object v0
.end method

.method public blacklist getPackageSpecificThresholds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getSystemWideThresholds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IoOveruseConfiguration { componentLevelThresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageSpecificThresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appCategorySpecificThresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemWideThresholds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

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

    .line 162
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 163
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mPackageSpecificThresholds:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 164
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mAppCategorySpecificThresholds:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;->mSystemWideThresholds:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 166
    return-void
.end method
