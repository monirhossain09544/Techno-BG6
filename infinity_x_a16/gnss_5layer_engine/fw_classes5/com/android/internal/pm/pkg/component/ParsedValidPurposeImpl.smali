.class public Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;
.super Ljava/lang/Object;
.source "ParsedValidPurposeImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedValidPurpose;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist maxTargetSdkVersion:I

.field private blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 93
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 96
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 97
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 135
    :cond_17
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    .line 127
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 129
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->maxTargetSdkVersion:I

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    .line 60
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 62
    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->maxTargetSdkVersion:I

    .line 65
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxTargetSdkVersion()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->maxTargetSdkVersion:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setMaxTargetSdkVersion(I)Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;
    .registers 2

    .line 87
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->maxTargetSdkVersion:I

    .line 88
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;
    .registers 4

    .line 79
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    .line 80
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 82
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 108
    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 109
    iget p2, p0, Lcom/android/internal/pm/pkg/component/ParsedValidPurposeImpl;->maxTargetSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
